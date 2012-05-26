class Professor < ActiveRecord::Base
  has_and_belongs_to_many :materias
  attr_accessible :nome, :materia_ids

  def to_s
  	nome
  end
end
