enum FormaDePagamento {
    case pix
    case boleto
    case saldoEmConta
}

enum ResultadoSaque {
    case sucesso(novoValor: Double)
    case falha(erro: String)
}

class Conta {
    var saldo: Double
    var nome: String
    
    init(nome: String) {
        self.saldo = 0.0
        self.nome = nome
    }
    
    func sacar(_ valor: Double) -> ResultadoSaque {
        if valor > saldo {
            return .falha(erro: "O valor é maior do que seu saldo")
        } else {
            saldo -= valor
            return .sucesso(novoValor: saldo)
        }
    }
    
    func depositar(_ valor: Double) {
        saldo += valor
    }
    
    func pagamentoCartao(_ tipoPagamento: FormaDePagamento) {
        switch tipoPagamento {
            case .pix: print("o pagamento será efetuado por pix")
            case .boleto: print("o pagamento será efetuado por boleto")
            case .saldoEmConta: print("o pagamento será efetuado por saldo em conta")
        }
    }
}

var contaThiago = Conta(nome: "Thiago")
contaThiago.pagamentoCartao(.pix)
contaThiago.depositar(180)
let resultado = contaThiago.sacar(80)

switch resultado {
    case .sucesso(let novoValor):
        print("O saque foi um sucesso, e o saldo é de \(novoValor)")
    case .falha(let erro):
    print(erro)
}

enum Mes: String {
    case janeiro = "Janeiro", fevereiro, marco, abril, maio, junho, julho, agosto, setembro, outubro, novembro, dezembro
}

var janeiro = Mes.janeiro
print(janeiro.rawValue)
var fevereiro: Mes = .fevereiro
print(fevereiro.rawValue)

enum Moeda: Double {
    case umCentavo = 0.01
    case cincoCentavos = 0.05
    case dezCentavos = 0.1
    case vinteCincoCentavos = 0.25
    case cinquentaCentavos = 0.5
}

var moedaCincoCentavos = Moeda.cincoCentavos
print(moedaCincoCentavos.rawValue)
