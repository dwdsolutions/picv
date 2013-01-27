class CreateDenuncias < ActiveRecord::Migration
  def change
    create_table :denuncias do |t|
      t.references :usuario
      t.references :expediente
      t.string :tipo
      t.text :direccion_hechos
      t.references :municipio_hechos
      t.string :zona_hechos
      t.string :ambito
      t.timestamp :fecha_agresion
      t.text :descripcion
      t.string :nombre_agresor
      t.string :edad_agresor
      t.string :sexo_agresor
      t.text :direccion_agresor
      t.references :municipio_agresor
      t.string :zona_agresor
      t.string :nivel_educativo_agresor
      t.string :ocupacion_agresor
      t.string :telefono_agresor
      t.string :trabajo_agresor
      t.text :direccion_trabajo_agresor
      t.references :municipio_trabajo_agresor
      t.string :relacion_agresor_victima
      t.string :condicion_agresor
      t.string :tipo_arma_agresor
      t.boolean :antecendente_criminal_agresor

      t.timestamps
    end
    add_index :denuncias, :usuario_id
    add_index :denuncias, :expediente_id
    add_index :denuncias, :municipio_hechos_id
    add_index :denuncias, :municipio_agresor_id
    add_index :denuncias, :municipio_trabajo_agresor_id
  end
end
