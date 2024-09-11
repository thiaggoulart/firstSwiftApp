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

extension Conta {
    func transferir(_ contaDestino: Conta, _ valor: Double) {
        sacar(valor)
        contaDestino.depositar(valor)
    }
}

var contaThiago = Conta(nome: "Thiago")
contaThiago.depositar(200)

var contaTcharles = Conta(nome: "Tcharles")
contaThiago.transferir(contaTcharles, 50)

print(contaThiago.saldo)
print(contaTcharles.saldo)

func contaCaracteresString(_ texto: String) -> Int{
    return texto.count
}

let texto = String("Thiago")
contaCaracteresString(texto)

extension String {
    func contaCaracteresString() -> Int {
        return self.count
    }
}
print(texto.contaCaracteresString())
