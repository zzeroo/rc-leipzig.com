# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
RcLeipzigCom::Application.initialize!

config.action_mailer.delivery_method = :smtp

ActionMailer::Base.smtp_settings = {
  :address  => "mail.zzeroo.org",
  :port  => 25,
  :user_name  => "zzeroo",
  :password  => "asrael",
  :authentication  => :login
}
