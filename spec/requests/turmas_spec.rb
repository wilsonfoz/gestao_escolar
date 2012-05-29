#encoding: UTF-8
require 'spec_helper'

describe "Turmas" do
  describe "vendo turmas" do
    it "exibe todas as turmas" do
      visit turmas_path
      page.should have_content("Não há turmas cadastradas.")
      FactoryGirl.create(:turma, :nome => "5A")
      visit turmas_path
      page.should have_content("5A")
    end
  end

  describe "adicionar uma turma" do
    it "adiciona uma turma sem matérias ou professores" do
      visit turmas_path
      click_on "Cadastrar turma"
      fill_in "turma_nome", with: "5A"
      click_on "Criar Turma"
      page.should have_content("Os dados foram salvos com sucesso.")
      page.should have_content ("5A")
    end
  end

  describe "alterar dados de turma" do
    it "altera dados de uma turma registrada" do
      FactoryGirl.create(:turma, :nome => "5A")
      visit turmas_path
      click_on "Alterar"
      fill_in "turma_nome", with: "5B"
      click_on "Atualizar Turma"
      page.should have_content("Os dados foram atualizados com sucesso.")
      page.should have_content("5B")
    end
  end  

  describe "remover turma cadastrada" do
    it "remove uma turma registrada" do
      FactoryGirl.create(:turma, :nome => "5A")
      visit turmas_path
      page.should have_content("5A")
      click_on "Excluir"
      page.should_not have_content("5A")
    end
  end  
end
