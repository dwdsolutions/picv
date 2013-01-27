class Usuario < ActiveRecord::Base
  has_secure_password
  validates_presence_of :password, :on => :create
  
  attr_accessible :email, :password, :password_confirmation
  validates :email, 
  			:email_format => {
  								:message => 'is not looking good',
  								:allow_nil => false,
  								:allow_blank => false}
end
