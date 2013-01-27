class CreateNotas < ActiveRecord::Migration
  def change
    create_table :notas do |t|
      t.references :usuario
      t.references :denuncia
      t.text :descripcion

      t.timestamps
    end
    add_index :notas, :usuario_id
    add_index :notas, :denuncia_id
  end
end
