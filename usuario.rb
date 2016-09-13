require_relative 'banco.rb'

class Usuario
  attr_accessor :saldo, :nome, :senha, :pin

  def initialize(nome, saldo = 0, senha, pin)
    @nome = nome
    @saldo = saldo
    @senha = senha
    @pin = pin
  end
end
