# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :turma do
    sequence(:nome) {|t| "TurmaTeste#{t}"}
  end
end
