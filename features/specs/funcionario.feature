#language: pt

Funcionalidade: Verificar funcionamento da API de Casdastro de Funcionários
Como um usário
Quero enviar requisições para a API
para verificar a integridade das Regras de Cadastro

    Cenário: Cadastrar Funcionário
        Quando faço uma requisição POST para o serviço Create
        Então deve retornar 200
        E a mensagem "Successfully! Record has been added."

    Cenário: Validar Cadastrado de Funcionário
        Quando faço uma requisição GET para o serviço Employeer
        Então deve retornar 200
        E a mensagem "Successfully! Record has been fetched."

    Cenário: Remover Funcionário
        Quando faço uma requisição DELETE 
        Então deve retornar 200
        E a mensagem "Successfully! Record has been deleted"