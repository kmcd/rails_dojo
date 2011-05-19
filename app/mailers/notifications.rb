class Notifications < ActionMailer::Base
  default :from => kmcd_email

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifications.signup.subject
  #
  def signup(email)
    @email = email
    
    mail :to => "tom@pixelo.com", :cc => kmcd_email, 
      :subject => "New signup for RailsDojo.com"
  end
  
  def kmcd_email
    "keith@dancingtext.com"
  end
end
