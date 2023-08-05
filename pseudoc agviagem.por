programa { agencia de viagem
}

Algoritmo AgenciaDeViagens

    //  dados do cliente
    registro Cliente
        nome:caracter
        cpf:caracter
    Fim Registro

    // dados do destino
    registro Destino
        nome: caracter
        descricao: caracter
        preco: real
    Fim Registro

    // Declaração dos vetores para armazenar os clientes e destinos
    var clientes: vetor[1..100] de Cliente
    var destinos: vetor[1..100] de Destino
    var numClientes: inteiro
    var numDestinos: inteiro
    
    // Inicialização das variáveis
    numClientes <- 0
    numDestinos <- 0

    Funcao CadastroCliente()
        Se numClientes >= 100 Entao
            Escrever "Limite máximo de clientes atingido."
            Retorne
        Fim Se

        Escrever "Digite o nome do cliente: "
        Ler clientes[numClientes].nome
        Escrever "Digite o CPF do cliente: "
        Ler clientes[numClientes].cpf
        
        numClientes <- numClientes + 1
        Escrever "Cliente cadastrado com sucesso!"
    
    Funcao CadastroDestino()
        Se numDestinos >= 100 Entao
            Escrever "Limite máximo de destinos atingido."
            Retorne
        Fim Se

        Escrever "Digite o nome do destino: "
        Ler destinos[numDestinos].nome
        Escrever "Digite a descrição do destino: "
        Ler destinos[numDestinos].descricao
        Escrever "Digite o preço da viagem para este destino: "
        Ler destinos[numDestinos].preco
        
        numDestinos <- numDestinos + 1
        Escrever "Destino cadastrado com sucesso!"
    
    Funcao ConsultaClientes()
        Escrever "---- CLIENTES CADASTRADOS ----"
        Para i <- 0 Ate numClientes-1 faca
            Escrever "Nome: " + clientes[i].nome
            Escrever "CPF: " + clientes[i].cpf
            Escrever "-----------------------------"
        Fim Para
    
    Funcao ConsultaDestinos()
        Escrever "---- DESTINOS CADASTRADOS ----"
        Para i <- 0 Ate numDestinos-1 faca
            Escrever "Destino: " + destinos[i].nome
            Escrever "Descrição: " + destinos[i].descricao
            Escrever "Preço: " + destinos[i].preco
            Escrever "-----------------------------"
        Fim Para

    Funcao MenuPrincipal()
        Enquanto verdadeiro faca
            Escrever "---------------------------"
            Escrever "MENU PRINCIPAL"
            Escrever "1. Cadastrar Cliente"
            Escrever "2. Cadastrar Destino"
            Escrever "3. Consultar Clientes"
            Escrever "4. Consultar Destinos"
            Escrever "5. Sair"
            Escrever "Escolha uma opção: "
            Ler opcao

            Escolha opcao
                Caso 1:
                    CadastroCliente()
                Caso 2:
                    CadastroDestino()
                Caso 3:
                    ConsultaClientes()
                Caso 4:
                    ConsultaDestinos()
                Caso 5:
                    Escrever "Encerrando o programa..."
                    Pare
                Default:
                    Escrever "Opção inválida. Tente novamente."
        Fim Enquanto
    Fim Funcao

    // Chame a função MenuPrincipal para iniciar o programa.
    MenuPrincipal()
Fim Algoritmo

