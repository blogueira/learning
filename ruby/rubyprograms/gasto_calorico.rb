# bpm = ARGV[0].to_f # batimentos por minuto
# massa = ARGV[1].to_f # kg
# idade = ARGV[2].to_f # hahaha
# tempo = ARGV[3].to_f # em minutos
# sexo = ARGV[4] # m/f

if ARGV.length != 5
  print 'erro! utilize \'ruby gasto_calorico.rb bpm massa idade tempo sexo\''
end

if ARGV[4] == 'm'
  p ((-55.0969 + (0.6309 * ARGV[0]) + (0.1988 * ARGV[1]) + (0.2017 * ARGV[2])) / 4.184) * ARGV[3]
  elsif ARGV[4] == 'f'
  p ((-20.4022 + (0.4472 * ARGV[0]) - (0.1263 * ARGV[1]) + (0.074 * ARGV[2])) / 4.184) * ARGV[3]
end
