puts "Seja bem-vindo(a) ao jogo de adivinhação!"
puts "Tente adivinhar o número que estou pensando entre 1 e 100."

loop do
  
  numero_secreto = rand(1..100)
  palpite = 0
  tentativas = 5
  resposta = false

  while tentativas > 0
    puts "=======================" 
    puts "Tentativas restantes: #{tentativas}"
    puts "======================="
    puts "Digite seu palpite: "
    puts""
    palpite = gets.chomp.to_i

    if palpite == numero_secreto
      puts "Parabéns, você acertou!"
      puts""
      resposta = true
      break

    elsif palpite < numero_secreto
      puts "Tente um número maior."
      puts ""

    elsif palpite > numero_secreto
      puts "Tente um número menor!"
      puts ""
    end

    tentativas -= 1

    if resposta == true
      puts "============================"
      puts "Deseja jogar novamente? (s/n)"
      puts "============================"
      break if gets.chomp.downcase != 's'
    end
  end

  if resposta == false
    puts "========================================="
    puts "| Game over! O número era #{numero_secreto}            |"
    puts "========================================="
    puts "| Deseja jogar novamente? (s/n)         |"
    puts "========================================="
    break if gets.chomp.downcase != 's'
  end

end
