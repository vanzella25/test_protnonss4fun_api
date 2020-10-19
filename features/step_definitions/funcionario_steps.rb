Quando("faço uma requisição POST para o serviço Create") do
  @payload = build(:create_sucesses).employee_hash
  @response = employee.create_employee(@payload)

  $id = @response.parsed_response["data"]["id"]
end

Quando("faço uma requisição GET para o serviço Employeer") do
  @response = employee.find_employee($id)
end

Quando("faço uma requisição DELETE") do
  @response = employee.remove_employee($id)
end

Então("deve retornar {int}") do |status_code|
  expect(@response.code).to eq status_code
end

Então("a mensagem {string}") do |message_return|
  expect(@response.parsed_response["status"]).to eql "success"
  expect(@response.parsed_response["message"]).to eq message_return
end