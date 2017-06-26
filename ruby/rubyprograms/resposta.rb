unless ARGV.length == 5 #se os parametros nao foram passados corretamente
    puts "Uso: ruby gasto_calorico -bpm -massa -idade -tempo -sexo"
    exit
end

params = ["bpm", "massa", "idade", "tempo", "sexo"]

#iteracao do array ARGV
for i in (0...ARGV.length)
  puts params[i] + " => " + ARGV[i]
  end
