require "./conta_bancaria"

class ContaCorrente < Conta
    @@tarifa_cc_transferencia = 1.99
    attr_accessor :tarifa

    def transferir (conta_favorecida, valor)
        @tarifa = @@tarifa_cc_transferencia
        if (@saldo > (valor + @tarifa))
            super(conta_favorecida, valor)
            @saldo -= @tarifa
        else
            puts "FALHA ao transferir, saldo insuficiente"
            puts "Saldo: $#{saldo}"
        end
    end
end

