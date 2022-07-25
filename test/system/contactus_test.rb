require "application_system_test_case"

class ContactusTest < ApplicationSystemTestCase
  setup do
    @contactu = contactus(:one)
  end

  test "visiting the index" do
    visit contactus_url
    assert_selector "h1", text: "Contactus"
  end

  test "should create contactu" do
    visit contactus_url
    click_on "New contactu"

    fill_in "Email", with: @contactu.email
    fill_in "Message", with: @contactu.message
    fill_in "Name", with: @contactu.name
    fill_in "Subject", with: @contactu.subject
    click_on "Create Contactu"

    assert_text "Contactu was successfully created"
    click_on "Back"
  end

  test "should update Contactu" do
    visit contactu_url(@contactu)
    click_on "Edit this contactu", match: :first

    fill_in "Email", with: @contactu.email
    fill_in "Message", with: @contactu.message
    fill_in "Name", with: @contactu.name
    fill_in "Subject", with: @contactu.subject
    click_on "Update Contactu"

    assert_text "Contactu was successfully updated"
    click_on "Back"
  end

  test "should destroy Contactu" do
    visit contactu_url(@contactu)
    click_on "Destroy this contactu", match: :first

    assert_text "Contactu was successfully destroyed"
  end
end
