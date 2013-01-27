class CreateArchivos < ActiveRecord::Migration
  def change
    create_table :archivos do |t|
      t.has_attached_file :archivo
      t.references :denuncia
      t.timestamps
    end

    add_index :archivos, :denuncia_id
    
  end
end
