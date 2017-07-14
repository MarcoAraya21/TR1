require 'test_helper'

class RecoursesControllerTest < ActionController::TestCase
  setup do
    @recourse = recourses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recourses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recourse" do
    assert_difference('Recourse.count') do
      post :create, recourse: { Cantidad: @recourse.Cantidad, Fecha: @recourse.Fecha, product_id: @recourse.product_id, reparation_id: @recourse.reparation_id }
    end

    assert_redirected_to recourse_path(assigns(:recourse))
  end

  test "should show recourse" do
    get :show, id: @recourse
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @recourse
    assert_response :success
  end

  test "should update recourse" do
    patch :update, id: @recourse, recourse: { Cantidad: @recourse.Cantidad, Fecha: @recourse.Fecha, product_id: @recourse.product_id, reparation_id: @recourse.reparation_id }
    assert_redirected_to recourse_path(assigns(:recourse))
  end

  test "should destroy recourse" do
    assert_difference('Recourse.count', -1) do
      delete :destroy, id: @recourse
    end

    assert_redirected_to recourses_path
  end
end
