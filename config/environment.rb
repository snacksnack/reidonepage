# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Reidonepage::Application.initialize!

# ActionMailer points to SendGrid
ActionMailer::Base.smtp_settings = {
  :user_name => 'app21355249@heroku.com',
  :password => 'rk8oqaz9',
  :domain => 'hihelloreid.com',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}
