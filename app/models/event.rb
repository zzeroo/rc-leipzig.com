class Event < ActiveRecord::Base
  require 'net/ftp'

  attr_accessible :description, :enddate, :startdate, :title, :location,
    :file_uploads_attributes

  has_many :subscribers, :dependent => :destroy
  
  has_many :file_uploads, :as => :uploadable
  accepts_nested_attributes_for :file_uploads, :allow_destroy => true, :reject_if => lambda {|a| a[:title].blank? }

  validates :title, :presence => true



  def process
    file_uploads.each do |f|
      a,b = f

      ftp_upload(a)
      b.file = b.file.original_filename
    end
  end

  def ftp_upload(attachment)
    ftp = Net::FTP.new(Settings.ftp.server)
    ftp.passive = true
    ftp.login(user = Settings.ftp.username, passwd = Settings.ftp.password)
    ftp.storbinary("STOR " + attachment.original_attachmentname, attachment, Net::FTP::DEFAULT_BLOCKSIZE)
    ftp.quit()
  end
end
