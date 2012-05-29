#encoding: UTF-8
require 'spec_helper'

describe "Matérias" do
  describe "vendo matérias" do
    it "exibe todas as matérias" do
      visit materias_path
      page.should have_content("Não há matérias cadastradas.")
      FactoryGirl.create(:materia, :nome => "Português")
      visit materias_path
      page.should have_content("Português")
    end
  end

  describe "adicionar uma matéria" do
    it "adiciona uma matéria" do
      visit materias_path
      click_on "Cadastrar matéria"
      fill_in "materia_nome", with: "Matemática"
      click_on "Criar Matéria"
      page.should have_content("Matemática")
      page.should have_content("Os dados foram salvos com sucesso.")
    end
  end

  describe "alterar dados de matéria" do
    it "altera dados de uma matéria registrada" do
      FactoryGirl.create(:materia, :nome => "Física")
      visit materias_path
      click_on "Alterar"
      fill_in "materia_nome", with: "Física Quântica"
      click_on "Atualizar Matéria"
      page.should have_content("Física Quântica")
      page.should have_content("Os dados foram atualizados com sucesso.")
    end
  end  

  describe "remover matéria cadastrada" do
    it "remove uma matéria registrada" do
      FactoryGirl.create(:materia, :nome => "Química")
      visit materias_path
      click_on "Excluir"
      page.should_not have_content("Química")
    end
  end  
end
