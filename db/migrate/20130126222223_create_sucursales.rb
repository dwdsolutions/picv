class CreateSucursales < ActiveRecord::Migration
  def change
    create_table :sucursales do |t|
      t.text :direccion
      t.references :municipio
      t.references :institucion
      t.string :telefono
      t.string :email
      t.string :longitud
      t.string :latitud

      t.timestamps
    end
    add_index :sucursales, :municipio_id
    add_index :sucursales, :institucion_id
  end
end
