#encoding: UTF-8
require 'spec_helper'

describe "Alunos" do
  describe "vendo alunos com turma" do
    it "exibe todos os alunos e suas turmas" do
      sua_turma = FactoryGirl.create(:turma, :nome => "5a")
      FactoryGirl.create(:aluno, :nome => "Davi", :turma => sua_turma)
      visit alunos_path
      page.should have_content("Davi")
      page.should have_content("5a")
    end
  end

  describe "vendo alunos sem turma" do
    it "exibe todos os alunos sem turma" do
      FactoryGirl.create(:aluno, :nome => "Davi", :turma => nil)
      visit alunos_path
      page.should have_content("Davi")
      page.should have_content("O aluno não está registrado em uma turma.")
    end
  end  

  describe "adicionar um aluno" do
    it "adiciona um aluno" do
      visit alunos_path
      click_on "Cadastrar aluno"
      fill_in "aluno_nome", with: "Napoleão Bonaparte"
      click_on "Criar Aluno"
      page.should have_content("Os dados foram salvos com sucesso.")
      page.should have_content("Napoleão Bonaparte")
    end
  end

  describe "alterar dados de aluno" do
    it "altera dados de um estudante registrado" do
      FactoryGirl.create(:aluno, :nome => "Maria")
      visit alunos_path
      click_on "Alterar"
      fill_in "aluno_nome", with: "Maria da Silva"
      click_on "Atualizar Aluno"
      page.should have_content("Maria da Silva")
    end
  end  

  describe "remover aluno cadastrado" do
    it "remove um estudante registrado" do
      FactoryGirl.create(:aluno, :nome => "AlunoX")
      visit alunos_path
      click_on "Excluir"
      page.should_not have_content("AlunoX")
    end
  end  

end