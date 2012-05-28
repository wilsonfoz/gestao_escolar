class Professor < ActiveRecord::Base
  has_many :aulas
  has_many :materias, :through => :aulas
  has_many :turmas, :through => :aulas

  attr_accessible :nome, :materia_ids

  def to_s
  	nome
  end
end
