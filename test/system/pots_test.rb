require "application_system_test_case"

class PotsTest < ApplicationSystemTestCase
  setup do
    @pot = pots(:one)
  end

  test "visiting the index" do
    visit pots_url
    assert_selector "h1", text: "Pots"
  end

  test "should create pot" do
    visit pots_url
    click_on "New pot"

    check "Booked" if @pot.booked
    fill_in "Class", with: @pot.class
    fill_in "Class type", with: @pot.class_type
    fill_in "User", with: @pot.user_id
    fill_in "User name", with: @pot.user_name
    click_on "Create Pot"

    assert_text "Pot was successfully created"
    click_on "Back"
  end

  test "should update Pot" do
    visit pot_url(@pot)
    click_on "Edit this pot", match: :first

    check "Booked" if @pot.booked
    fill_in "Class", with: @pot.class
    fill_in "Class type", with: @pot.class_type
    fill_in "User", with: @pot.user_id
    fill_in "User name", with: @pot.user_name
    click_on "Update Pot"

    assert_text "Pot was successfully updated"
    click_on "Back"
  end

  test "should destroy Pot" do
    visit pot_url(@pot)
    click_on "Destroy this pot", match: :first

    assert_text "Pot was successfully destroyed"
  end
end
