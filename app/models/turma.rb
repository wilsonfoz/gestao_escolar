class Turma < ActiveRecord::Base
  attr_accessible :nome
  has_many :alunos
  has_many :materias
end
