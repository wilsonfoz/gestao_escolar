# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :professor do
    nome "MyString"
    materias
    turmas
  end
end
