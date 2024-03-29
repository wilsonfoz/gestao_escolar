# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120526022812) do

  create_table "alunos", :force => true do |t|
    t.string   "nome"
    t.integer  "turma_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "alunos", ["turma_id"], :name => "index_alunos_on_turma_id"

  create_table "aulas", :force => true do |t|
    t.integer  "materia_id"
    t.integer  "professor_id"
    t.integer  "turma_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "aulas", ["materia_id"], :name => "index_aulas_on_materia_id"
  add_index "aulas", ["professor_id"], :name => "index_aulas_on_professor_id"
  add_index "aulas", ["turma_id"], :name => "index_aulas_on_turma_id"

  create_table "materias", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "professores", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "turmas", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
