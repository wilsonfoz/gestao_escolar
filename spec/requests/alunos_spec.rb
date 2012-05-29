require 'spec_helper'

describe "Alunos" do
  describe "vendo alunos" do
    it "exibe todos os alunos" do
      FactoryGirl.create(:aluno, :nome => "Davi")
      visit alunos_path
      page.should have_content("Davi")
    end
  end
end