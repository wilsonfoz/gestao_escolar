class CreateMaterias < ActiveRecord::Migration
  def change
    create_table :materias do |t|
      t.string :nome
      t.references :turma
      t.references :professor

      t.timestamps
    end
    add_index :materias, [:turma_id, :professor_id]
  end
end
