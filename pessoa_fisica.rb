class PessoaFisica < Usuario

  attr_accessor :taxa
  attr_accessor :cpf

  def initialize(nome, saldo = 0, senha, pin, documento)
    super(nome, saldo = 0, senha, pin)
    @cpf = documento
    @taxa = 0.08
  end

end
