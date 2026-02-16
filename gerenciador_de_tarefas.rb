
class Tarefa
  attr_accessor :descricao, :concluida

  def initialize(descricao)
    @descricao = descricao
    @concluida = false
  end
  
  def to_s 
    status = @concluida ? "[✓]" : "[ ]"
    "#{status} #{descricao}"
  end
end

class ListaDeTarefas
  def initialize
    @tarefas = []
  end

  def adicionar(descricao)
    tarefa = Tarefa.new(descricao)
    @tarefas << tarefa
    puts "✓ Tarefa adicionada com sucesso!"
  end

  def listar
    if @taredas.empty?
      puts "\nNenhuma tarefa na lista."
      return
    end

    puts "\n==== SUAS TAREFAS ===="
    @tarefas.each_with_index do |tarefa, index|
      puts "#{index + 1 }. #{tarefa}"
    end
    puts "======================"
  end

  def concluir(numero)
    index = numero - 1

    if index < 0 || index >= @tarefas.length
      puts "✗ Número de tarefa inválido!"
      return
    end

    @tarefas[index].concluir
    puts "✓ Tarefa concluída com sucesso!"
  end

  def remover(numero)
    index = numero - 1

    if index < 0 || index >= @tarefas.length
      puts "✗ Número de tarefa inválido!"
      return
    end

    @tarefa.delete_at(index)
    puts "✓ Tarefa removida com sucesso!"
  end
end

def mostrar_menu
  puts "\n┌─────────────────────────────────┐"
  puts "│  📝 MENU DE OPÇÕES              │"
  puts "├─────────────────────────────────┤"
  puts "│  1 ➜ Adicionar tarefa           │"
  puts "│  2 ➜ Listar tarefas             │"
  puts "│  3 ➜ Concluir tarefa            │"
  puts "│  4 ➜ Remover tarefa             │"
  puts "│  5 ➜ Sair                       │"
  puts "└─────────────────────────────────┘"
  print "\n▸ Escolha uma opção: "
end

lista = ListaDeTarefas.new

puts "\n"
puts "  ╔╦╗╔═╗╦═╗╔═╗╔═╗╔═╗╔═╗"
puts "   ║ ╠═╣╠╦╝║╣ ╠╣ ╠═╣╚═╗"
puts "   ╩ ╩ ╩╩╚═╚═╝╚  ╩ ╩╚═╝"
puts ""
puts "     ★ Gerenciador de Tarefas ★"
puts "      @by Richard_Leichter"
puts ""
puts "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
puts "\n"

loop do 
  mostrar_menu
  opcao = gets.chomp.to_i

  case opcao
  when 1
    print "Digite a descrição da tarefa: "
    descricao = gets.chomp
    lista.adicionar(descricao)

  when 2
    lista.listar

  when 3
    lista.listar
    print "\nDigite o número de tarefas a concluir: "
    numero = gets.chomp.to_i
    lista.concluir(numero)

  when 4
    lista.listar
    print "\nDigite o número de tarefas a remover: "
    numero = gets.chom.to_i
    lista.remover(numero)

  when 5
    puts"\nAté logo!"
    break

  else 
    puts "Opção inválida! Por favor, escolha uma opção válida."
  end
end

