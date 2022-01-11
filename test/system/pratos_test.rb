require "application_system_test_case"

class PratosTest < ApplicationSystemTestCase
  setup do
    @prato = pratos(:one)
  end

  test "visiting the index" do
    visit pratos_url
    assert_selector "h1", text: "Pratos"
  end

  test "should create prato" do
    visit pratos_url
    click_on "New prato"

    fill_in "Nome", with: @prato.nome
    fill_in "Restaurante", with: @prato.restaurante_id
    click_on "Create Prato"

    assert_text "Prato was successfully created"
    click_on "Back"
  end

  test "should update Prato" do
    visit prato_url(@prato)
    click_on "Edit this prato", match: :first

    fill_in "Nome", with: @prato.nome
    fill_in "Restaurante", with: @prato.restaurante_id
    click_on "Update Prato"

    assert_text "Prato was successfully updated"
    click_on "Back"
  end

  test "should destroy Prato" do
    visit prato_url(@prato)
    click_on "Destroy this prato", match: :first

    assert_text "Prato was successfully destroyed"
  end
end
