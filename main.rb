require_relative 'banco.rb'
require_relative 'usuario.rb'

class Main

  banco = Banco.new
  banco.criar_conta("irla", 500, 1111, 1234)
  banco.criar_conta('Lucimar', 600, 2222, 1357)

  banco.imprimir_todas_contas
  banco.sacar(1111, 1234, 100)

  banco.imprimir_todas_contas

end
