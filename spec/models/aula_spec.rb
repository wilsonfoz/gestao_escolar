#encoding: UTF-8
require 'spec_helper'

describe Aula do
  it { should belong_to(:materia) }
  it { should belong_to(:professor) }
  it { should belong_to(:turma) }
    
  it "não deve ter matérias duplicadas por turma" do
  	aula1 = FactoryGirl.create(:aula, materia_id: 1, professor_id: 1,  turma_id: 1 )
  	aula2 = FactoryGirl.build(:aula, materia_id: 1, professor_id: 2,  turma_id: 1 )
  	aula2.should_not be_valid
  end

  it "to_s deve retornar nome do professor e nome da matéria da aula" do
  	aula = FactoryGirl.create(:aula)
  	aula.to_s.should == "#{aula.professor} - #{aula.materia}"
  end

end
