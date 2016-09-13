class PessoaJuridica < Usuario

  attr_accessor :taxa
  attr_accessor :cnpj

  def initialize(nome, saldo = 0, senha, pin, documento)
    super(nome, saldo = 0, senha, pin)
    @cnpj = documento
    @taxa = 0.05
  end
end
