class Aula < ActiveRecord::Base
  belongs_to :materia
  belongs_to :professor
  belongs_to :turma

  #accepts_nested_attributes_for :materia, :professor

  attr_accessible :materia_id, :professor_id

  validates_uniqueness_of :turma_id, :scope => [:materia_id, :professor_id]

  def to_s
  	"#{self.professor} - #{self.materia}"
  end

end
