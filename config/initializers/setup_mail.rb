ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "the-conways.com", 
  :user_name            => "perseverance@the-conways.com", 
  :password             => "johnconway", 
  :authentication       => 'plain', 
  :authentication       => "plain",
  :enable_starttls_auto => true
}
