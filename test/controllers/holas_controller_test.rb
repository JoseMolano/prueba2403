require 'test_helper'

class HolasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hola = holas(:one)
  end

  test "should get index" do
    get holas_url
    assert_response :success
  end

  test "should get new" do
    get new_hola_url
    assert_response :success
  end

  test "should create hola" do
    assert_difference('Hola.count') do
      post holas_url, params: { hola: { nombre: @hola.nombre } }
    end

    assert_redirected_to hola_url(Hola.last)
  end

  test "should show hola" do
    get hola_url(@hola)
    assert_response :success
  end

  test "should get edit" do
    get edit_hola_url(@hola)
    assert_response :success
  end

  test "should update hola" do
    patch hola_url(@hola), params: { hola: { nombre: @hola.nombre } }
    assert_redirected_to hola_url(@hola)
  end

  test "should destroy hola" do
    assert_difference('Hola.count', -1) do
      delete hola_url(@hola)
    end

    assert_redirected_to holas_url
  end
end
