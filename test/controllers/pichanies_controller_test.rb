require "test_helper"

class PichaniesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pichany = pichanies(:one)
  end

  test "should get index" do
    get pichanies_url
    assert_response :success
  end

  test "should get new" do
    get new_pichany_url
    assert_response :success
  end

  test "should create pichany" do
    assert_difference("Pichany.count") do
      post pichanies_url, params: { pichany: { age: @pichany.age, name: @pichany.name } }
    end

    assert_redirected_to pichany_url(Pichany.last)
  end

  test "should show pichany" do
    get pichany_url(@pichany)
    assert_response :success
  end

  test "should get edit" do
    get edit_pichany_url(@pichany)
    assert_response :success
  end

  test "should update pichany" do
    patch pichany_url(@pichany), params: { pichany: { age: @pichany.age, name: @pichany.name } }
    assert_redirected_to pichany_url(@pichany)
  end

  test "should destroy pichany" do
    assert_difference("Pichany.count", -1) do
      delete pichany_url(@pichany)
    end

    assert_redirected_to pichanies_url
  end
end
