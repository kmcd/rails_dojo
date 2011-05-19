class Registration < ActiveRecord::Base
  validates_presence_of :email
  validates_format_of :email, :with => /.*@.*\.+.*/, :message => 'must be valid'
  
  after_create :deliver_signup_notification

  def deliver_signup_notification
    Notifications.deliver_signup email
  end
end
