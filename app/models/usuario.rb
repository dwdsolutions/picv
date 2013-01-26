class Usuario < ActiveRecord::Base
  has_secure_password
  validates_presence_of :password, :on => :create
  validates :email,   
            :presence => true,   
            :uniqueness => true,   
            :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }
  
  attr_accessible :email, :password, :password_confirmation
end
