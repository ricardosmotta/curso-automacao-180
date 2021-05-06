
# i = 1

# 10.times do
#     puts "Execução numero #{i}"
#     i = i + 1
# end

bandas = ["Aerosmith", "Só pra contrariar", "Claudinho e Buchecha", "Guns n Roses", "Raimundos"]

# loopstimes
# i = 0
# bandas.size.times do
#     puts bandas[i]
#     i = i + 1
# end

#foreach -> utilizar sempre que trabalhar com loops usando arrays
bandas.each do |banda|
    puts bandas
end
