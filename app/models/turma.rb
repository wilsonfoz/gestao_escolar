class Turma < ActiveRecord::Base
  has_many :alunos
  has_many :aulas

  attr_accessible :nome, :aula_ids

  #accepts_nested_attributes_for :aulas

end
