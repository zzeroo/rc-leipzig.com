# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
RcLeipzigCom::Application.initialize!

ActionMailer::Base.smtp_settings = {
  :address  => "mail.zzeroo.org",
  :port  => 25,
  :user_name  => "zzeroo",
  :password  => "asrael",
  :authentication  => :plain
}

