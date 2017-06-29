require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post :create, product: { Descripcion: @product.Descripcion, Imagen: @product.Imagen, Nombre: @product.Nombre, Pcategory_id: @product.Pcategory_id, Precio: @product.Precio, Ptype_id: @product.Ptype_id, Status_id: @product.Status_id, Stock: @product.Stock, Trademark_id: @product.Trademark_id }
    end

    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
    patch :update, id: @product, product: { Descripcion: @product.Descripcion, Imagen: @product.Imagen, Nombre: @product.Nombre, Pcategory_id: @product.Pcategory_id, Precio: @product.Precio, Ptype_id: @product.Ptype_id, Status_id: @product.Status_id, Stock: @product.Stock, Trademark_id: @product.Trademark_id }
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to products_path
  end
end
