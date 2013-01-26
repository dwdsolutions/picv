class CreateExpedientes < ActiveRecord::Migration
  def change
    create_table :expedientes do |t|
      t.string :nombre
      t.string :apellido1
      t.string :apellido2
      t.string :telefono
      t.string :email
      t.string :dui
      t.integer :edad
      t.string :sexo
      t.references :municipio

      t.timestamps
    end
    add_index :expedientes, :municipio_id
  end
end
