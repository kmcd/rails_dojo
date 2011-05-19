class Notifications < ActionMailer::Base
  KMCD_EMAIL = "keith@dancingtext.com"
  
  default :from => KMCD_EMAIL

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifications.signup.subject
  #
  def signup(email)
    @email = email
    
    mail :to => "tom@pixelo.com", :cc => KMCD_EMAIL, 
      :subject => "New signup for RailsDojo.com"
  end
end
