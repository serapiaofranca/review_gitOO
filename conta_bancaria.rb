#!/usr/bin/env ruby

class Conta 
    attr_reader :num_conta, :digito, :ativo
    attr_reader :saldo
    attr_reader :cliente

    def initialize
        @num_conta = 0
        @digito = 0
        @saldo = 0
        @ativo = false
    end

    def criar_conta(cliente)
        if cliente.cliente_ativo == true
            @num_conta +=3
            @digito += 1
            @saldo = 0
            @ativo = true
            @cliente = cliente
            puts "Conta vinculada ao cliente #{cliente}"
        else
            puts "Cliente inativo no sistema... favor verificar"
        end
    end

    def depositar(valor)
        if valor > 0 && @ativo == true
            @saldo += valor
            puts "Deposito realizado com sucesso.."
        else
            puts "conta inativa, impossivel realizar deposito..."
        end
    end

    def sacar(valor)
        if @saldo > valor && @ativo == true
            @saldo -= valor  
            puts "Saque de $#{valor} realizado com sucesso.."
            puts "Saldo Atual: $#{@saldo}"
        else
            puts "falha, conta inativa.... "          
        end
    end

    def transferir(conta, digito, valor)
        if @conta.sacar(valor) 
            if conta.depositar(valor)
                @conta.sacar(valor)
                conta.depositar(valor)
                puts " Transferencia de $#{valor} realizado com sucesso para conta: #{conta} - #{digito} "
            else
                puts ".... Falha ao transferir, conta destino invalida..."
            end
        else
            puts "Nao foi possivel realizar operação :: conta: #{@conta}-#{@digito} :: Saldo: $#{@saldo} "
        end
    end

    def mostrar_conta
        puts "Conta Numero: #{@num_conta}"
        puts "Digito: #{@digito}"
        puts "SALDO $#{@saldo} "
        puts "Ativo: #{@ativo}"
    end
end

