class CreateAulas < ActiveRecord::Migration
  def change
    create_table :aulas do |t|
      t.references :materia
      t.references :professor
      t.references :turma

      t.timestamps
    end
    add_index :aulas, :materia_id
    add_index :aulas, :professor_id
    add_index :aulas, :turma_id
  end
end
