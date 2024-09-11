class ContaCorrente {
    var saldo: Double
    var nome: String
    
    init(nome: String) {
        saldo = 0.0
        self.nome = nome
    }
    
     func sacar(_ valor: Double) {
        saldo -= valor
    }
    
     func depositar (_ valor: Double) {
        saldo += valor
    }
}

var contaCorrenteThiago = ContaCorrente(nome: "Thiago")
print(contaCorrenteThiago.saldo)
contaCorrenteThiago.depositar(1500)
print(contaCorrenteThiago.saldo)

var contaCorrenteTcharles = ContaCorrente(nome: "Tcharles")
contaCorrenteTcharles.depositar(800)
print(contaCorrenteTcharles.saldo)
contaCorrenteTcharles.sacar(200)
print(contaCorrenteTcharles.saldo)

