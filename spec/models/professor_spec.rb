#encoding: UTF-8
require 'spec_helper'

describe Professor do
  it { should have_many(:aulas) }
  it { should have_many(:materias).through(:aulas) }
  it { should have_many(:turmas).through(:aulas) }

  it "deve possuir um nome" do
	  Professor.new(:nome => "").should_not be_valid
  end

  it "to_s deve retornar o nome" do
	  professor = Professor.create(:nome => "José")
	  professor.to_s.should == "José"
  end

end
