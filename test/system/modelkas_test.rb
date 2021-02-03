require "application_system_test_case"

class ModelkasTest < ApplicationSystemTestCase
  setup do
    @modelka = modelkas(:one)
  end

  test "visiting the index" do
    visit modelkas_url
    assert_selector "h1", text: "Modelkas"
  end

  test "creating a Modelka" do
    visit modelkas_url
    click_on "New Modelka"

    fill_in "Name", with: @modelka.name
    click_on "Create Modelka"

    assert_text "Modelka was successfully created"
    click_on "Back"
  end

  test "updating a Modelka" do
    visit modelkas_url
    click_on "Edit", match: :first

    fill_in "Name", with: @modelka.name
    click_on "Update Modelka"

    assert_text "Modelka was successfully updated"
    click_on "Back"
  end

  test "destroying a Modelka" do
    visit modelkas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Modelka was successfully destroyed"
  end
end
