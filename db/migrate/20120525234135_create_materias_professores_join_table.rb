class CreateMateriasProfessoresJoinTable < ActiveRecord::Migration
  def up
  	create_table :materias_professores, :id => false do |t|
  	  t.references :materia
  	  t.references :professor
  	end
  	add_index :materias_professores, [:materia_id, :professor_id]
  end

  def down
  	drop_table :materias_professores
  end
end
