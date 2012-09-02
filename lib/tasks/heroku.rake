require File.join( Rails.root, 'config/environment.rb' )
require 'net/ftp'

namespace "heroku" do
  desc "dumps local database" 
  task :dumpdb do
    config =  Rails.application.config.database_configuration[Rails.env]
    `PGPASSWORD=#{config["password"]} pg_dump -Fc --no-acl --no-owner -h localhost -U #{config["username"]} #{config["database"]} > db/localdb.dump`
  end

  desc "uploads the local database dump to ftp server"
  task :load2ftp do
    begin
      upload(File.join(Rails.root, 'localdb.dump'))
      puts "Download at: " + File.join(@config.ftp_url, 'localdb.dump')
    rescue
      puts "Some error while uploading the dump"
    end
  end

  desc "import the local db dump from the ftp server via its public url"
  task :importdbdump do
    get_config
    sh "heroku pgbackups:restore DATABASE '#{File.join(@config.ftp_url, 'localdb.dump')}' --app rc-leipzig --confirm rc-leipzig"
  end
end



private

  # get_config receives the configuration form the config/initalizers/carrierwave.rb
  def get_config
    @config = CarrierWave::Uploader::Base
  end

  def upload(file)
    get_config
    @file = file
    ftp = Net::FTP.new(@config.ftp_host)
    ftp.login(user = @config.ftp_user, passwd = @config.ftp_passwd)
    ftp.puttextfile(file)
    ftp.quit()
  end
