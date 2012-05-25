class Aluno < ActiveRecord::Base
  attr_accessible :nome
  belongs_to :turma
end
