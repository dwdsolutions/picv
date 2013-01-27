# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130127060347) do

  create_table "denuncias", :force => true do |t|
    t.integer  "usuario_id"
    t.integer  "expediente_id"
    t.string   "tipo"
    t.text     "direccion_hechos"
    t.integer  "municipio_hechos_id"
    t.string   "zona_hechos"
    t.string   "ambito"
    t.datetime "fecha_agresion"
    t.text     "descripcion"
    t.string   "nombre_agresor"
    t.string   "edad_agresor"
    t.string   "sexo_agresor"
    t.text     "direccion_agresor"
    t.integer  "municipio_agresor_id"
    t.string   "zona_agresor"
    t.string   "nivel_educativo_agresor"
    t.string   "ocupacion_agresor"
    t.string   "telefono_agresor"
    t.string   "trabajo_agresor"
    t.text     "direccion_trabajo_agresor"
    t.integer  "municipio_trabajo_agresor_id"
    t.string   "relacion_agresor_victima"
    t.string   "condicion_agresor"
    t.string   "tipo_arma_agresor"
    t.boolean  "antecendente_criminal_agresor"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  add_index "denuncias", ["expediente_id"], :name => "index_denuncias_on_expediente_id"
  add_index "denuncias", ["municipio_agresor_id"], :name => "index_denuncias_on_municipio_agresor_id"
  add_index "denuncias", ["municipio_hechos_id"], :name => "index_denuncias_on_municipio_hechos_id"
  add_index "denuncias", ["municipio_trabajo_agresor_id"], :name => "index_denuncias_on_municipio_trabajo_agresor_id"
  add_index "denuncias", ["usuario_id"], :name => "index_denuncias_on_usuario_id"

  create_table "departamentos", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "expedientes", :force => true do |t|
    t.string   "nombre"
    t.string   "apellido1"
    t.string   "apellido2"
    t.string   "telefono"
    t.string   "email"
    t.string   "documento_identidad"
    t.integer  "edad"
    t.string   "sexo"
    t.integer  "municipio_id"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
    t.string   "zona"
    t.string   "ocupacion"
    t.string   "lugar_trabajo"
    t.string   "telefono_trabajo"
    t.string   "direccion_trabajo"
    t.integer  "municipio_trabajo_id"
    t.string   "nivel_educativo"
    t.string   "estado_familiar"
    t.string   "sostenimiento_familiar"
    t.string   "discapacidad_fisica"
    t.string   "discapacidad_mental"
  end

  add_index "expedientes", ["municipio_id"], :name => "index_expedientes_on_municipio_id"

  create_table "instituciones", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "municipios", :force => true do |t|
    t.string   "nombre"
    t.integer  "departamento_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "municipios", ["departamento_id"], :name => "index_municipios_on_departamento_id"

  create_table "sucursales", :force => true do |t|
    t.text     "direccion"
    t.integer  "municipio_id"
    t.integer  "institucion_id"
    t.string   "telefono"
    t.string   "email"
    t.string   "longitud"
    t.string   "latitud"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "sucursales", ["institucion_id"], :name => "index_sucursales_on_institucion_id"
  add_index "sucursales", ["municipio_id"], :name => "index_sucursales_on_municipio_id"

  create_table "usuarios", :force => true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.string   "nombre"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "institucion_id"
    t.string   "rol"
  end

end
