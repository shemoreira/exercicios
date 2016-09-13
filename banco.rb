require_relative 'usuario.rb'

class Banco

  attr_accessor :contas

  def initialize
    self.contas = []
  end

  def criar_conta(nome, saldo, senha, pin, tipo)
    if tipo == "fisica"
      self.contas << Usuario.new(nome, saldo, senha, pin)
    elsif tipo == "juridica"
      self.contas << Usuario.new(nome, saldo, senha, pin)
    end

  end

  def depositar(valorDeposito)
    @saldo += valorDeposito
    return @saldo
  end

  def sacar(senha, pin, valorSaque)
    conta = procurar_conta(pin)

    unless senha_valida?(conta, senha)
      return false
    end

    if conta.saldo >= valorSaque && valorSaque > 0
      conta.saldo -= valorSaque
    else
      puts "saldo insuficiente!"
    end
  end

  def transferir(valor, contaOrigem, contaDestino)
    if contaOrigem.saldo >= valor
      "Foi transferido: #{valor} para #{contaDestino.nome}. Total: #{contaDestino.saldo += valor}"
    else
      puts "Saldo insuficiente!"
    end
  end

  def procurar_conta(pin)
    self.contas.each do |conta|
      if pin == conta.pin
        return conta
      end
    end
  end

  def senha_valida?(conta, senha)
    conta.senha == senha
  end

  def imprimir_todas_contas
    self.contas.each do |conta|
      puts "Conta de #{conta.nome}, saldo: #{conta.saldo}"
    end
  end

end
