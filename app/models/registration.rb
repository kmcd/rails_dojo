class Registration < ActiveRecord::Base
  validates_presence_of :email
  validates_format_of :email, :with => /.*@.*\.+.*/, :message => 'which must be valid'
end
