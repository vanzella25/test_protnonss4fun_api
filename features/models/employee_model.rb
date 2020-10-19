class EmployeeModel
  attr_accessor :nome, :salario, :idade

  def employee_hash
    {
      name: @nome,
      salary: @salario,
      age: @idade,
    }
  end
end
