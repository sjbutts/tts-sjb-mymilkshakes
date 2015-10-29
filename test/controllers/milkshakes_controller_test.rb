require 'test_helper'

class MilkshakesControllerTest < ActionController::TestCase
  setup do
    @milkshake = milkshakes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:milkshakes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create milkshake" do
    assert_difference('Milkshake.count') do
      post :create, milkshake: { image: @milkshake.image, ingredients: @milkshake.ingredients, price: @milkshake.price, shake: @milkshake.shake }
    end

    assert_redirected_to milkshake_path(assigns(:milkshake))
  end

  test "should show milkshake" do
    get :show, id: @milkshake
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @milkshake
    assert_response :success
  end

  test "should update milkshake" do
    patch :update, id: @milkshake, milkshake: { image: @milkshake.image, ingredients: @milkshake.ingredients, price: @milkshake.price, shake: @milkshake.shake }
    assert_redirected_to milkshake_path(assigns(:milkshake))
  end

  test "should destroy milkshake" do
    assert_difference('Milkshake.count', -1) do
      delete :destroy, id: @milkshake
    end

    assert_redirected_to milkshakes_path
  end
end
