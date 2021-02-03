require "test_helper"

class ModelkasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @modelka = modelkas(:one)
  end

  test "should get index" do
    get modelkas_url
    assert_response :success
  end

  test "should get new" do
    get new_modelka_url
    assert_response :success
  end

  test "should create modelka" do
    assert_difference('Modelka.count') do
      post modelkas_url, params: { modelka: { name: @modelka.name } }
    end

    assert_redirected_to modelka_url(Modelka.last)
  end

  test "should show modelka" do
    get modelka_url(@modelka)
    assert_response :success
  end

  test "should get edit" do
    get edit_modelka_url(@modelka)
    assert_response :success
  end

  test "should update modelka" do
    patch modelka_url(@modelka), params: { modelka: { name: @modelka.name } }
    assert_redirected_to modelka_url(@modelka)
  end

  test "should destroy modelka" do
    assert_difference('Modelka.count', -1) do
      delete modelka_url(@modelka)
    end

    assert_redirected_to modelkas_url
  end
end
