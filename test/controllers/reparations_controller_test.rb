require 'test_helper'

class ReparationsControllerTest < ActionController::TestCase
  setup do
    @reparation = reparations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reparations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reparation" do
    assert_difference('Reparation.count') do
      post :create, reparation: { Descripcion: @reparation.Descripcion, FechaF: @reparation.FechaF, FechaI: @reparation.FechaI, Llamada: @reparation.Llamada, PrecioBase: @reparation.PrecioBase, PrecioFinal: @reparation.PrecioFinal, cproduct_id: @reparation.cproduct_id, user_id: @reparation.user_id }
    end

    assert_redirected_to reparation_path(assigns(:reparation))
  end

  test "should show reparation" do
    get :show, id: @reparation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reparation
    assert_response :success
  end

  test "should update reparation" do
    patch :update, id: @reparation, reparation: { Descripcion: @reparation.Descripcion, FechaF: @reparation.FechaF, FechaI: @reparation.FechaI, Llamada: @reparation.Llamada, PrecioBase: @reparation.PrecioBase, PrecioFinal: @reparation.PrecioFinal, cproduct_id: @reparation.cproduct_id, user_id: @reparation.user_id }
    assert_redirected_to reparation_path(assigns(:reparation))
  end

  test "should destroy reparation" do
    assert_difference('Reparation.count', -1) do
      delete :destroy, id: @reparation
    end

    assert_redirected_to reparations_path
  end
end
