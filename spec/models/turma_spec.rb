#encoding: UTF-8
require 'spec_helper'

describe Turma do
  it { should have_many(:alunos) }
  it { should have_many(:aulas) }
  it { should have_many(:professores).through(:aulas) }
  it { should have_many(:materias).through(:aulas) }

  it "deve possuir um nome" do
	Turma.new(:nome => "").should_not be_valid
  end

  it "deve possuir um nome único" do
  	Turma.create(:nome => "Teste")
  	should validate_uniqueness_of(:nome)
  end

  it "to_s deve retornar o nome" do
    turma = Turma.create(:nome => "5A")
	turma.to_s.should == "5A"
  end

end
