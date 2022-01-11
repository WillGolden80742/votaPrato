require "application_system_test_case"

class QualificacaosTest < ApplicationSystemTestCase
  setup do
    @qualificacao = qualificacaos(:one)
  end

  test "visiting the index" do
    visit qualificacaos_url
    assert_selector "h1", text: "Qualificacaos"
  end

  test "should create qualificacao" do
    visit qualificacaos_url
    click_on "New qualificacao"

    fill_in "Cliente", with: @qualificacao.cliente_id
    fill_in "Nota", with: @qualificacao.nota
    fill_in "Restaurante", with: @qualificacao.restaurante_id
    fill_in "Valor gasto", with: @qualificacao.valor_gasto
    click_on "Create Qualificacao"

    assert_text "Qualificacao was successfully created"
    click_on "Back"
  end

  test "should update Qualificacao" do
    visit qualificacao_url(@qualificacao)
    click_on "Edit this qualificacao", match: :first

    fill_in "Cliente", with: @qualificacao.cliente_id
    fill_in "Nota", with: @qualificacao.nota
    fill_in "Restaurante", with: @qualificacao.restaurante_id
    fill_in "Valor gasto", with: @qualificacao.valor_gasto
    click_on "Update Qualificacao"

    assert_text "Qualificacao was successfully updated"
    click_on "Back"
  end

  test "should destroy Qualificacao" do
    visit qualificacao_url(@qualificacao)
    click_on "Destroy this qualificacao", match: :first

    assert_text "Qualificacao was successfully destroyed"
  end
end
