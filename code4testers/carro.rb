
# nome, marca, modelo, cor, qtde de portas, etc...
# ligar, businar, parar, etc...

# Uma classe é um objeto que tem características e funções

class Carro
    attr_accessor :nome, :cor, :marca   # attr_acessor atribuí características à uma classe

    def initialize(nome, cor, marca)
        @nome = nome
        @cor = cor
        @marca = marca
    end

    def ligar  
        puts "O #{@nome} cor #{@cor} da #{@marca} está pronto para iniciar o trajeto."
    end
end

chevette = Carro.new("Chevette", "vermelho", "GM")

# chevette.nome = "Chevette"
# chevette.cor = "vermelho"
# chevette.marca = "GM"

chevette.ligar

fusca = Carro.new("Fusca", "preto", "VW")

# fusca.nome = "Fusca"
# fusca.cor = "preto"
# fusca.marca = "VW"

fusca.ligar