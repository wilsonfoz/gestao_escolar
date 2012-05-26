class Aula < ActiveRecord::Base
  belongs_to :materia
  belongs_to :professor

  def to_s
  	"#{self.professor} - #{self.materia}"
  end

end
