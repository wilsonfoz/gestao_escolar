class Turma < ActiveRecord::Base
  has_many :alunos
  has_many :materias
  has_many :aulas, :dependent => :destroy
  has_many :materias, :through => :aulas

  attr_accessible :nome, :materia_ids
end
