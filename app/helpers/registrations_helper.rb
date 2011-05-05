module RegistrationsHelper
  def redcloth(text)
    raw RedCloth.new(text).to_html
  end
  
  def error_message_for(errors)
    message = errors.on(:email)
    message = message.join(' &amp; ') if message.is_a? Array
      
    content_tag :b, message.html_safe
  end
end
