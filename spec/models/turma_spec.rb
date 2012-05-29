require 'spec_helper'

describe Turma do	
  let(:turma) {FactoryGirl.build(:turma)}
	
  it "should be valid" do
  	turma.should be_valid
  end

  it "should not be valid with blank 'nome'" do
  	turma.nome = ""
  	turma.should_not be_valid
  end
end
