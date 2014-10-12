# Load the Rails application.
require File.expand_path('../application', __FILE__)
# Initialize the Rails application.
Depot::Application.configure do
  config.action_mailer.delivery_method = :smtp

  config.action_mailer.smtp_settings = {
    address: "smtp.gmail.com",
    port: 587,
    domain: "localhost:3000",
    authentication: "plain",
    user_name: "saracavic",
    password: "4l3@Fdawgdr00l",
    enable_starttls_auto: true
  }
Depot::Application.initialize!
end
