
# nome, marca, modelo, cor, qtde de portas, etc...
# ligar, businar, parar, etc...

# Uma classe é um objeto que tem características e funções

class Carro
    attr_accessor :nome, :cor, :marca   # attr_acessor atribuí características à uma classe

    def ligar  
        puts "O #{@nome} está pronto para iniciar o trajeto."
    end
end

chevette = Carro.new

chevette.nome = "Chevette"
chevette.cor = "vermelho"
chevette.marca = "GM"

chevette.ligar
puts chevette.class

fusca = Carro.new

fusca.nome = "Fusca"
fusca.cor = "preto"
fusca.marca = "VW"

fusca.ligar