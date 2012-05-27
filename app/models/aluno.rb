class Aluno < ActiveRecord::Base
  attr_accessible :nome, :turma_id
  belongs_to :turma
end
