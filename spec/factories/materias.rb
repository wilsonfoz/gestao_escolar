# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :materia do
    sequence(:nome) {|m| "materia{m}"}
  end
end
