class Conta {
    var nome: String
    
    var saldo = 0.0 {
        willSet(novoValor) {
            print("O saldo está sendo alterado! O seu novo valor será de \(novoValor)")
        }
        
        didSet(valorAntigo) {
            print("O saldo está sendo alterado! O seu valor antigo era de \(valorAntigo)")
        }
    }
    
    static var taxaTransferencia = 0.1
    
    var negativado: Bool {
        return saldo < 0
    }

    init(nome: String) {
        self.nome = nome
    }
    
    func sacar(_ valor: Double) {
        saldo -= valor
    }
    
    func depositar(_ valor: Double) {
        saldo += valor
    }
}

var contaThiago = Conta(nome: "Thiago")
contaThiago.sacar(20)
print(contaThiago.negativado)
contaThiago.depositar(100)
print(contaThiago.negativado)
print(Conta.taxaTransferencia)
