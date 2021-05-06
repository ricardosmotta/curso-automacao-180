
bandas = ["Raimundos", 'Charlie Brown Jr.', "Black Sabbath", "Os Travessos"]

# puts "1 - " + bandas[0] 
# puts bandas[1]
# puts bandas[2]
# puts bandas[3]

bandas.push("Bob Marley")

# puts bandas[4]

bandas.delete("Raimundos")

#puts bandas

#rock = bandas.find { |item| item == 'Black Sabbath' }
rock = bandas.find { |item| item.include? 'Black'}   # include? é o 'contém' do excel
puts rock