puts "Qual o seu nome?"
nome = gets.chomp
puts "Me informe sua idade "
idade = gets.chomp.to_i

#puts idade >= 18

if (idade >= 18)
    puts "#{nome}, você tem #{idade} anos e portanto pode tirar sua carteira de motorista."
elsif
    (idade >= 7)
    puts "#{nome}, você tem #{idade} anos e portanto é melhor continuar na bicicletinha."
else
    puts "#{nome}, você tem só #{idade} anos, portato é muito novo e só pode andar de motoquinha."
end
