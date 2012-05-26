class Materia < ActiveRecord::Base
  belongs_to :turma
  has_and_belongs_to_many :professores
  attr_accessible :nome, :professor_ids

  def to_s
  	nome
  end

end
