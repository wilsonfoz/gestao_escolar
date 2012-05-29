#encoding: UTF-8
require 'spec_helper'

describe Aluno do
  it "deve possuir um nome" do
	Aluno.new(:nome => "").should_not be_valid
  end
end
