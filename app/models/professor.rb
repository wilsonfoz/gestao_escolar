class Professor < ActiveRecord::Base
  attr_accessible :nome
  has_many :materias
end
