require 'test_helper'

class DenunciasControllerTest < ActionController::TestCase
  setup do
    @denuncia = denuncias(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:denuncias)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create denuncia" do
    assert_difference('Denuncia.count') do
      post :create, denuncia: { ambito: @denuncia.ambito, antecendente_criminal_agresor: @denuncia.antecendente_criminal_agresor, condicion_agresor: @denuncia.condicion_agresor, descripcion: @denuncia.descripcion, direccion_agresor: @denuncia.direccion_agresor, direccion_hechos: @denuncia.direccion_hechos, direccion_trabajo_agresor: @denuncia.direccion_trabajo_agresor, edad_agresor: @denuncia.edad_agresor, fecha_agresion: @denuncia.fecha_agresion, nivel_educativo_agresor: @denuncia.nivel_educativo_agresor, nombre_agresor: @denuncia.nombre_agresor, ocupacion_agresor: @denuncia.ocupacion_agresor, relacion_agresor_victima: @denuncia.relacion_agresor_victima, sexo_agresor: @denuncia.sexo_agresor, telefono_agresor: @denuncia.telefono_agresor, tipo: @denuncia.tipo, tipo_arma_agresor: @denuncia.tipo_arma_agresor, trabajo_agresor: @denuncia.trabajo_agresor, zona_agresor: @denuncia.zona_agresor, zona_hechos: @denuncia.zona_hechos }
    end

    assert_redirected_to denuncia_path(assigns(:denuncia))
  end

  test "should show denuncia" do
    get :show, id: @denuncia
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @denuncia
    assert_response :success
  end

  test "should update denuncia" do
    put :update, id: @denuncia, denuncia: { ambito: @denuncia.ambito, antecendente_criminal_agresor: @denuncia.antecendente_criminal_agresor, condicion_agresor: @denuncia.condicion_agresor, descripcion: @denuncia.descripcion, direccion_agresor: @denuncia.direccion_agresor, direccion_hechos: @denuncia.direccion_hechos, direccion_trabajo_agresor: @denuncia.direccion_trabajo_agresor, edad_agresor: @denuncia.edad_agresor, fecha_agresion: @denuncia.fecha_agresion, nivel_educativo_agresor: @denuncia.nivel_educativo_agresor, nombre_agresor: @denuncia.nombre_agresor, ocupacion_agresor: @denuncia.ocupacion_agresor, relacion_agresor_victima: @denuncia.relacion_agresor_victima, sexo_agresor: @denuncia.sexo_agresor, telefono_agresor: @denuncia.telefono_agresor, tipo: @denuncia.tipo, tipo_arma_agresor: @denuncia.tipo_arma_agresor, trabajo_agresor: @denuncia.trabajo_agresor, zona_agresor: @denuncia.zona_agresor, zona_hechos: @denuncia.zona_hechos }
    assert_redirected_to denuncia_path(assigns(:denuncia))
  end

  test "should destroy denuncia" do
    assert_difference('Denuncia.count', -1) do
      delete :destroy, id: @denuncia
    end

    assert_redirected_to denuncias_path
  end
end
