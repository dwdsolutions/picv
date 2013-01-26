require 'test_helper'

class ExpedientesControllerTest < ActionController::TestCase
  setup do
    @expediente = expedientes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:expedientes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create expediente" do
    assert_difference('Expediente.count') do
      post :create, expediente: { apellido1: @expediente.apellido1, apellido2: @expediente.apellido2, dui: @expediente.dui, edad: @expediente.edad, email: @expediente.email, nombre: @expediente.nombre, sexo: @expediente.sexo, telefono: @expediente.telefono }
    end

    assert_redirected_to expediente_path(assigns(:expediente))
  end

  test "should show expediente" do
    get :show, id: @expediente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @expediente
    assert_response :success
  end

  test "should update expediente" do
    put :update, id: @expediente, expediente: { apellido1: @expediente.apellido1, apellido2: @expediente.apellido2, dui: @expediente.dui, edad: @expediente.edad, email: @expediente.email, nombre: @expediente.nombre, sexo: @expediente.sexo, telefono: @expediente.telefono }
    assert_redirected_to expediente_path(assigns(:expediente))
  end

  test "should destroy expediente" do
    assert_difference('Expediente.count', -1) do
      delete :destroy, id: @expediente
    end

    assert_redirected_to expedientes_path
  end
end
