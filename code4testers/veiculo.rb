
# nome, marca, modelo, cor, qtde de portas, etc...
# ligar, businar, parar, etc...

# Uma classe é um objeto que tem características e funções

class Veiculo
    attr_accessor :nome, :cor, :marca   # attr_acessor atribuí características à uma classe

    def initialize(nome, cor, marca)
        @nome = nome
        @cor = cor
        @marca = marca
    end

    def define_cor(cor)
        @cor = cor
    end

end

class Carro < Veiculo
    def ligar  
        puts "O #{@nome} cor #{@cor} da #{@marca} está pronto para iniciar o trajeto."
    end

    def dirigir
        puts "O #{@nome} está iniciando o trajeto."
    end
end

class Moto < Veiculo
    def ligar  
        puts "A #{@nome} cor #{@cor} da #{@marca} está pronta para iniciar o trajeto."
    end

    def pilotar
        puts "A #{@nome} está iniciando o trajeto."
    end
end

chevette = Carro.new("Chevette", "vermelho", "GM")

# chevette.nome = "Chevette"
# chevette.cor = "vermelho"
# chevette.marca = "GM"
chevette.ligar
chevette.dirigir
chevette.define_cor("laranja")
fusca = Carro.new("Fusca", "preto", "VW")

# fusca.nome = "Fusca"
# fusca.cor = "preto"
# fusca.marca = "VW"

fusca.ligar
fusca.dirigir
fusca.define_cor("branca")

cg = Moto.new("CG", "azul", "Honda")
cg.ligar
cg.pilotar
cg.define_cor("verde")
