# CLASSE -> é um OBJETO que tem características e funções
# CARACTERÍSTICAS -> nome, marca, modelo, cor, qtde de portas, etc...
# FUNÇÕES -> ligar, businar, parar, etc...



class Veiculo
    attr_accessor :nome, :cor, :marca   # attr_acessor atribuí características à uma classe(OBJETO)

    def initialize(nome, cor, marca)    # método construtor -> é executado toda vez que é criado uma instância da classe
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
        puts "O #{@nome} #{@cor} da #{@marca} está pronto para iniciar o trajeto."
    end

    def dirigir
        puts "O #{@nome} está iniciando o trajeto."
    end
end

class Moto < Veiculo
    def ligar  
        puts "A #{@nome} #{@cor} da #{@marca} está pronta para iniciar o trajeto."
    end

    def pilotar
        puts "A #{@nome} está iniciando o trajeto."
    end
end

chevette = Carro.new("Chevette", "vermelho", "GM")

chevette.ligar
chevette.dirigir
#chevette.define_cor("laranja")
puts chevette.class

fusca = Carro.new("Fusca", "preto", "VW")

fusca.ligar
fusca.dirigir
#fusca.define_cor("branca")
puts fusca.class

cg = Moto.new("CG", "azul", "Honda")
cg.ligar
cg.pilotar
cg.define_cor("verde")
puts cg.class
puts cg.define_cor("gelo")

