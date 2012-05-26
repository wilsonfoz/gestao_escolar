class Materia < ActiveRecord::Base
  has_many :aulas
  has_many :professores, :through => :aulas
  
  attr_accessible :nome, :professor_ids

  def to_s
  	nome
  end
end
