require "faker"
require_relative "../models/employee_model.rb"

FactoryBot.define do
  factory :create_sucesses, class: EmployeeModel do
    nome { Faker::Name.name }
    salario { Faker::Number.within(range: 1045..2090) }
    idade { Faker::Number.within(range: 18..65) }
  end
end
