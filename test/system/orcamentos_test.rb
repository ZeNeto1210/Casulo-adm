require "application_system_test_case"

class OrcamentosTest < ApplicationSystemTestCase
  setup do
    @orcamento = orcamentos(:one)
  end

  test "visiting the index" do
    visit orcamentos_url
    assert_selector "h1", text: "Orcamentos"
  end

  test "should create orcamento" do
    visit orcamentos_url
    click_on "New orcamento"

    fill_in "Cnpj", with: @orcamento.cnpj
    fill_in "Codigo", with: @orcamento.codigo
    fill_in "Descricao", with: @orcamento.descricao
    fill_in "Nome", with: @orcamento.nome
    fill_in "Quantidade", with: @orcamento.quantidade
    fill_in "Valor", with: @orcamento.valor
    click_on "Create Orcamento"

    assert_text "Orcamento was successfully created"
    click_on "Back"
  end

  test "should update Orcamento" do
    visit orcamento_url(@orcamento)
    click_on "Edit this orcamento", match: :first

    fill_in "Cnpj", with: @orcamento.cnpj
    fill_in "Codigo", with: @orcamento.codigo
    fill_in "Descricao", with: @orcamento.descricao
    fill_in "Nome", with: @orcamento.nome
    fill_in "Quantidade", with: @orcamento.quantidade
    fill_in "Valor", with: @orcamento.valor
    click_on "Update Orcamento"

    assert_text "Orcamento was successfully updated"
    click_on "Back"
  end

  test "should destroy Orcamento" do
    visit orcamento_url(@orcamento)
    click_on "Destroy this orcamento", match: :first

    assert_text "Orcamento was successfully destroyed"
  end
end
