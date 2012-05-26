class Materia < ActiveRecord::Base
  belongs_to :turma
  has_and_belongs_to_many :professores
  has_many :aulas
  has_many :turmas, :through => :aulas

  attr_accessible :nome, :professor_ids

  def to_s
  	nome
  end

end
