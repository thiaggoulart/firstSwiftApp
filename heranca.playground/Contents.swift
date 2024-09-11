class Conta {
    var saldo: Double
    var nome: String
    
    init(nome: String) {
        self.saldo = 0.0
        self.nome = nome
    }
    
    func sacar(_ valor: Double) {
        saldo -= valor
    }
    
    func depositar(_ valor: Double) {
        saldo += valor
    }
}

class ContaPoupanca: Conta {
    var possuiCartaoDebito: Bool
    
    init(nome: String, possuiCartaoDebito: Bool) {
        self.possuiCartaoDebito = possuiCartaoDebito
        super.init(nome: nome)
    }
    
    func solicitarDebito() {
        possuiCartaoDebito = true
        print("O cliente está solicitando cartão débito")
    }
    
    override func sacar(_ valor: Double) {
        saldo -= valor + 10
    }
    
}

var contaPoupanca = ContaPoupanca(nome: "Thiago", possuiCartaoDebito: false)
contaPoupanca.depositar(50)
print(contaPoupanca.saldo)
contaPoupanca.sacar(20)
print(contaPoupanca.saldo)
contaPoupanca.solicitarDebito()

class ContaCorrente: Conta {
    func solicitarEmprestimo(_ valor:Double) {
        print("O cliente está solicitando um empréstimo no valor de \(valor)")
        super.depositar(valor)
    }
    
    override func sacar(_ valor: Double) {
        saldo -= valor + 5
    }
}

var contaCorrente = ContaCorrente(nome: "Tcharles")
contaCorrente.depositar(100)
print(contaCorrente.saldo)
contaCorrente.sacar(20)
print(contaCorrente.saldo)
contaCorrente.solicitarEmprestimo(20000)
print(contaCorrente.saldo)

func exibeSaldoDaConta(_ conta: Conta) {
    if conta is ContaCorrente{
        print("Conta é do tipo conta corrente")
    }
    
    if let contaCorrente = conta as? ContaCorrente {
        contaCorrente.solicitarEmprestimo(180)
    }
    
    guard let contaPoupanca = conta as? ContaPoupanca else { return }
    print(contaPoupanca.possuiCartaoDebito)
    
    print(conta.saldo)
}

exibeSaldoDaConta(contaCorrente)
exibeSaldoDaConta(contaPoupanca)
