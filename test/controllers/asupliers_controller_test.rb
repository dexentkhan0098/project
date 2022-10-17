require "test_helper"

class AsupliersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @asuplier = asupliers(:one)
  end

  test "should get index" do
    get asupliers_url
    assert_response :success
  end

  test "should get new" do
    get new_asuplier_url
    assert_response :success
  end

  test "should create asuplier" do
    assert_difference("Asuplier.count") do
      post asupliers_url, params: { asuplier: { age: @asuplier.age, asuplier_id: @asuplier.asuplier_id, name: @asuplier.name } }
    end

    assert_redirected_to asuplier_url(Asuplier.last)
  end

  test "should show asuplier" do
    get asuplier_url(@asuplier)
    assert_response :success
  end

  test "should get edit" do
    get edit_asuplier_url(@asuplier)
    assert_response :success
  end

  test "should update asuplier" do
    patch asuplier_url(@asuplier), params: { asuplier: { age: @asuplier.age, asuplier_id: @asuplier.asuplier_id, name: @asuplier.name } }
    assert_redirected_to asuplier_url(@asuplier)
  end

  test "should destroy asuplier" do
    assert_difference("Asuplier.count", -1) do
      delete asuplier_url(@asuplier)
    end

    assert_redirected_to asupliers_url
  end
end
