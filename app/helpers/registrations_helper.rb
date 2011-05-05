module RegistrationsHelper
  def redcloth(text)
    raw RedCloth.new(text).to_html
  end
  
  def error_message_for(errors)
    content_tag :b, errors.full_messages
  end
end
