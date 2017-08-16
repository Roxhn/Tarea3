require 'test_helper'

class AnimalesControllerTest < ActionController::TestCase
  setup do
    @animale = animales(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:animales)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create animale" do
    assert_difference('Animale.count') do
      post :create, animale: { Animal: @animale.Animal, Edad: @animale.Edad, FechaEnac: @animale.FechaEnac }
    end

    assert_redirected_to animale_path(assigns(:animale))
  end

  test "should show animale" do
    get :show, id: @animale
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @animale
    assert_response :success
  end

  test "should update animale" do
    patch :update, id: @animale, animale: { Animal: @animale.Animal, Edad: @animale.Edad, FechaEnac: @animale.FechaEnac }
    assert_redirected_to animale_path(assigns(:animale))
  end

  test "should destroy animale" do
    assert_difference('Animale.count', -1) do
      delete :destroy, id: @animale
    end

    assert_redirected_to animales_path
  end
end
