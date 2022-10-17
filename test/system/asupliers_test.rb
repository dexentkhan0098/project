require "application_system_test_case"

class AsupliersTest < ApplicationSystemTestCase
  setup do
    @asuplier = asupliers(:one)
  end

  test "visiting the index" do
    visit asupliers_url
    assert_selector "h1", text: "Asupliers"
  end

  test "should create asuplier" do
    visit asupliers_url
    click_on "New asuplier"

    fill_in "Age", with: @asuplier.age
    fill_in "Asuplier", with: @asuplier.asuplier_id
    fill_in "Name", with: @asuplier.name
    click_on "Create Asuplier"

    assert_text "Asuplier was successfully created"
    click_on "Back"
  end

  test "should update Asuplier" do
    visit asuplier_url(@asuplier)
    click_on "Edit this asuplier", match: :first

    fill_in "Age", with: @asuplier.age
    fill_in "Asuplier", with: @asuplier.asuplier_id
    fill_in "Name", with: @asuplier.name
    click_on "Update Asuplier"

    assert_text "Asuplier was successfully updated"
    click_on "Back"
  end

  test "should destroy Asuplier" do
    visit asuplier_url(@asuplier)
    click_on "Destroy this asuplier", match: :first

    assert_text "Asuplier was successfully destroyed"
  end
end
