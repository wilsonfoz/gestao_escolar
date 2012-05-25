class Materia < ActiveRecord::Base
  belongs_to :turma
  belongs_to :professor
  attr_accessible :nome
end
