class CreateMaterias < ActiveRecord::Migration
  def change
    create_table :materias do |t|
      t.string :nome
      
      t.timestamps
    end
  end
end
