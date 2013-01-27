class AddInstitucionToUsuarios < ActiveRecord::Migration
  def change
  		add_column :usuarios, :institucion_id, :integer
  end
end
