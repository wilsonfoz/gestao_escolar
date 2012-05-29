class Aula < ActiveRecord::Base
  belongs_to :materia
  belongs_to :professor
  belongs_to :turma

  attr_accessible :materia_id, :professor_id

  validates_uniqueness_of :materia_id, :scope => [:turma_id]

  def to_s
  	"#{self.professor} - #{self.materia}"
  end

end
