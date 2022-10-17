require "test_helper"

class AacountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aacount = aacounts(:one)
  end

  test "should get index" do
    get aacounts_url
    assert_response :success
  end

  test "should get new" do
    get new_aacount_url
    assert_response :success
  end

  test "should create aacount" do
    assert_difference("Aacount.count") do
      post aacounts_url, params: { aacount: { title: @aacount.title } }
    end

    assert_redirected_to aacount_url(Aacount.last)
  end

  test "should show aacount" do
    get aacount_url(@aacount)
    assert_response :success
  end

  test "should get edit" do
    get edit_aacount_url(@aacount)
    assert_response :success
  end

  test "should update aacount" do
    patch aacount_url(@aacount), params: { aacount: { title: @aacount.title } }
    assert_redirected_to aacount_url(@aacount)
  end

  test "should destroy aacount" do
    assert_difference("Aacount.count", -1) do
      delete aacount_url(@aacount)
    end

    assert_redirected_to aacounts_url
  end
end
