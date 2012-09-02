class FileUpload < ActiveRecord::Base
  require 'net/ftp'

  attr_accessible :description, :file, :path, :title, :uploadable_id, :uploadable_type,
    :created_at, :updated_at

  belongs_to :uploadable, :polymorphic => true






  private
    def ftp_upload(upload)
      ftp = Net::FTP.new(Settings.ftp.server)
      ftp.passive = true
      ftp.login(user = Settings.ftp.username, passwd = Settings.ftp.password)
      ftp.storbinary("STOR " + upload.file.original_filename, upload.file, Net::FTP::DEFAULT_BLOCKSIZE)
      ftp.quit()
    end

    def delete_ftp_file
      MODEL_LOG.debug ">> Delete #{self}"
      ftp = Net::FTP.new(Settings.ftp.server)
      ftp.passive = true
      ftp.login(user = Settings.ftp.username, passwd = Settings.ftp.password)
      ftp.delete(self.file)
      ftp.quit()
    end

end
