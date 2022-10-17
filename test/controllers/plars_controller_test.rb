require "test_helper"

class PlarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @plar = plars(:one)
  end

  test "should get index" do
    get plars_url
    assert_response :success
  end

  test "should get new" do
    get new_plar_url
    assert_response :success
  end

  test "should create plar" do
    assert_difference("Plar.count") do
      post plars_url, params: { plar: { age: @plar.age, child_name: @plar.child_name, name: @plar.name } }
    end

    assert_redirected_to plar_url(Plar.last)
  end

  test "should show plar" do
    get plar_url(@plar)
    assert_response :success
  end

  test "should get edit" do
    get edit_plar_url(@plar)
    assert_response :success
  end

  test "should update plar" do
    patch plar_url(@plar), params: { plar: { age: @plar.age, child_name: @plar.child_name, name: @plar.name } }
    assert_redirected_to plar_url(@plar)
  end

  test "should destroy plar" do
    assert_difference("Plar.count", -1) do
      delete plar_url(@plar)
    end

    assert_redirected_to plars_url
  end
end
