#encoding: UTF-8
require 'spec_helper'

describe "Professores" do
  describe "vendo professores" do
    it "exibe todos os professores" do
      visit professores_path
      page.should have_content("Não há professores cadastrados.")
      FactoryGirl.create(:professor, :nome => "Pardal")
      visit professores_path
      page.should have_content("Pardal")
    end
  end

  describe "relatório de professores" do
    it "exibe os professores por turma" 

    it "exibe relatório por professor"
  end  

  describe "adicionar um professor" do
    it "adiciona um professor" do
      visit professores_path
      click_on "Cadastrar professor"
      fill_in "professor_nome", with: "Pardal"
      click_on "Criar Professor"
      page.should have_content("Os dados foram salvos com sucesso.")
      page.should have_content ("Pardal")
    end
  end

  describe "alterar dados de professor" do
    it "altera dados de um professor registrado" do
      FactoryGirl.create(:professor, :nome => "Pardal")
      visit professores_path
      click_on "Alterar"
      fill_in "professor_nome", with: "Canarinho"
      click_on "Atualizar Professor"
      page.should have_content("Canarinho")
    end
  end  

  describe "remover professor cadastrado" do
    it "remove um professor registrado" do
      FactoryGirl.create(:professor, :nome => "Pardal")
      visit professores_path
      page.should have_content("Pardal")
      click_on "Excluir"
      page.should_not have_content("Pardal")
    end
  end  
end
