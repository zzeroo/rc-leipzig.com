CarrierWave.configure do |config|

  config.storage = :ftp
  config.ftp_host   = "bremme-wohnen.de"
  config.ftp_port   = 21
  config.ftp_user   = "web209f1"
  config.ftp_passwd = "rc-l3ipz1g"
  config.ftp_folder = ""
  config.ftp_url    = "http://rc-leipzig.bremme-wohnen.de"
  config.ftp_passive = true
  
  if Rails.env.test? or Rails.env.cucumber?
    config.storage = :file
    config.enable_processing = false
    config.ftp_folder = "test-uploads"
    config.ftp_url    = "http://rc-leipzig.bremme-wohnen.de/test-uploads"
  elsif Rails.env.development?
    config.storage = :ftp
  end

end

