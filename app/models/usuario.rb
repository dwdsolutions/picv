class Usuario < ActiveRecord::Base
  has_secure_password
  belongs_to :institucion
  validates_presence_of :password, :institucion_id, :on => :create
  
  attr_accessible :email, :password, :password_confirmation, :institucion_id
  validates :email, 
  			:email_format => {
  								:message => 'is not looking good',
  								:allow_nil => false,
  								:allow_blank => false}
end
