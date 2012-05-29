# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :aula do
    materia
    professor
    turma
  end
end