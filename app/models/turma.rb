# encoding: UTF-8
class Turma < ActiveRecord::Base
  has_many :alunos
  has_many :aulas, :dependent => :destroy
  has_many :materias, :through => :aulas
  has_many :professores, :through => :aulas

  attr_accessible :nome, :aula_ids, :aulas_attributes, :materias, :professores

  accepts_nested_attributes_for :aulas, :reject_if => :all_blank, :allow_destroy => true

  validates_uniqueness_of :nome
  validates_presence_of :nome
  validates_associated :aulas
  validate :validate_unique_aulas

  def validate_unique_aulas
    validate_uniqueness_of_in_memory(aulas, [:materia_id, :turma_id], 
      'Não é permitido cadastrar matérias duplicadas.')
  end

  def to_s
    nome
  end

end

# Stackoveflow: http://tinyurl.com/4wconxh
module ActiveRecord
  class Base
    # Validate that the the objects in +collection+ are unique
    # when compared against all their non-blank +attrs+. If not
    # add +message+ to the base errors.
    def validate_uniqueness_of_in_memory(collection, attrs, message)
      hashes = collection.inject({}) do |hash, record|
        key = attrs.map {|a| record.send(a).to_s }.join
        if key.blank? || record.marked_for_destruction?
          key = record.object_id
        end
        hash[key] = record unless hash[key]
        hash
      end
      if collection.length > hashes.length
        self.errors.add(:base, :message)
      end
    end
  end
end  