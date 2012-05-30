# encoding: UTF-8
require 'spec_helper'

describe Materia do
  it { should have_many(:aulas) }
  it { should have_many(:professores).through(:aulas) }
  it { should have_many(:turmas).through(:aulas) }

  it "deve possuir um nome" do
	Materia.new(:nome => "").should_not be_valid
  end

  it "deve possuir um nome único" do
  	Materia.create(:nome => "Teste")
  	should validate_uniqueness_of(:nome)
  end

  it "to_s deve retornar o nome" do
	materia = Materia.create(:nome => "Matemática")
	materia.to_s.should == "Matemática"
  end

end
