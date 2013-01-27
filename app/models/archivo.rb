class Archivo < ActiveRecord::Base
  
  #belongs_to :denuncia
  belongs_to :denuncia
  
  has_attached_file :archivo, 
					:storage => :s3,
    				:bucket => 'picv_archivos',
				    :s3_credentials => {
				      :access_key_id => 'AKIAI54SJSJK7N4YOXYQ',
				      :secret_access_key => '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'
				    }
  validates :archivo, :attachment_presence => true

  attr_accessible :archivo
end
