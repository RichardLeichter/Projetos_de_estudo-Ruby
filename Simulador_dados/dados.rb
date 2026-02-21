puts "=== SIMULADOR DE DADOS RPG ==="
puts ""
puts "     ★ Gerenciador de Tarefas ★"
puts "      @by Richard_Leichter"
puts ""
puts "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
puts "\n"

DADOS = {

    1 => 4,
    2 => 6,
    3 => 8,
    4 => 10,
    5 => 12,
    6 => 20,
    7 => 100
}

DADOS.each {|key,faces | puts "[#[key]] Rolar d#{faces}"}
puts "[0] Sair"
print "\nEscolha uma opção: "

opcao = gets.chomp.to_i

if opcao == 0
    puts "Saindo..."
elsif DADOS.key?(opcao)
    faces = DADOS[opcao]

    print "Quantos d#{faces} você quer rolar? "
    quantidade = gets.chomp.to_i
    quantidade = 1 if quantidade <= 0

    resultados = Array.new(quantidade) { rand(1..faces) }

    puts "\n🎲 Resultado: #{resultados.join(' + ')}"
    puts "Total: #{resultados.sum}"
else
    puts "Opção inválida!"

end