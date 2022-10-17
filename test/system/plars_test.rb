require "application_system_test_case"

class PlarsTest < ApplicationSystemTestCase
  setup do
    @plar = plars(:one)
  end

  test "visiting the index" do
    visit plars_url
    assert_selector "h1", text: "Plars"
  end

  test "should create plar" do
    visit plars_url
    click_on "New plar"

    fill_in "Age", with: @plar.age
    fill_in "Child name", with: @plar.child_name
    fill_in "Name", with: @plar.name
    click_on "Create Plar"

    assert_text "Plar was successfully created"
    click_on "Back"
  end

  test "should update Plar" do
    visit plar_url(@plar)
    click_on "Edit this plar", match: :first

    fill_in "Age", with: @plar.age
    fill_in "Child name", with: @plar.child_name
    fill_in "Name", with: @plar.name
    click_on "Update Plar"

    assert_text "Plar was successfully updated"
    click_on "Back"
  end

  test "should destroy Plar" do
    visit plar_url(@plar)
    click_on "Destroy this plar", match: :first

    assert_text "Plar was successfully destroyed"
  end
end
