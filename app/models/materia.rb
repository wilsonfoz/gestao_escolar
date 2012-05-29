class Materia < ActiveRecord::Base
  has_many :aulas
  has_many :professores, :through => :aulas
  has_many :turmas, :through => :aulas
  
  attr_accessible :nome, :professor_ids

  validates_presence_of :nome
  validates_uniqueness_of :nome

  def to_s
  	nome
  end
end
