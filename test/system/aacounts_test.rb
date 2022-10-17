require "application_system_test_case"

class AacountsTest < ApplicationSystemTestCase
  setup do
    @aacount = aacounts(:one)
  end

  test "visiting the index" do
    visit aacounts_url
    assert_selector "h1", text: "Aacounts"
  end

  test "should create aacount" do
    visit aacounts_url
    click_on "New aacount"

    fill_in "Title", with: @aacount.title
    click_on "Create Aacount"

    assert_text "Aacount was successfully created"
    click_on "Back"
  end

  test "should update Aacount" do
    visit aacount_url(@aacount)
    click_on "Edit this aacount", match: :first

    fill_in "Title", with: @aacount.title
    click_on "Update Aacount"

    assert_text "Aacount was successfully updated"
    click_on "Back"
  end

  test "should destroy Aacount" do
    visit aacount_url(@aacount)
    click_on "Destroy this aacount", match: :first

    assert_text "Aacount was successfully destroyed"
  end
end
