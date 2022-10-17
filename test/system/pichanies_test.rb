require "application_system_test_case"

class PichaniesTest < ApplicationSystemTestCase
  setup do
    @pichany = pichanies(:one)
  end

  test "visiting the index" do
    visit pichanies_url
    assert_selector "h1", text: "Pichanies"
  end

  test "should create pichany" do
    visit pichanies_url
    click_on "New pichany"

    fill_in "Age", with: @pichany.age
    fill_in "Name", with: @pichany.name
    click_on "Create Pichany"

    assert_text "Pichany was successfully created"
    click_on "Back"
  end

  test "should update Pichany" do
    visit pichany_url(@pichany)
    click_on "Edit this pichany", match: :first

    fill_in "Age", with: @pichany.age
    fill_in "Name", with: @pichany.name
    click_on "Update Pichany"

    assert_text "Pichany was successfully updated"
    click_on "Back"
  end

  test "should destroy Pichany" do
    visit pichany_url(@pichany)
    click_on "Destroy this pichany", match: :first

    assert_text "Pichany was successfully destroyed"
  end
end
