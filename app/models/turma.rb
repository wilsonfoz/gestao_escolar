class Turma < ActiveRecord::Base
  has_many :alunos
  has_many :aulas

  attr_accessible :nome, :aula_ids, :aulas_attributes, :materias, :professores

  accepts_nested_attributes_for :aulas, :reject_if => :all_blank

  validates_associated :aulas

end
