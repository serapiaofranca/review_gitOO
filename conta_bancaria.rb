#!/usr/bin/env ruby
require_relative "cliente"

class Conta 

    @@add_conta = 0
    @@add_digito = 5

    attr_reader :num_conta, :digito, :ativo, :cliente
    attr_reader :saldo

   
    def initialize(titular)
        if titular.cliente_ativo == true
            @@add_conta +=1
            @num_conta = @@add_conta
            @digito = @@add_digito
            @saldo = 0
            @ativo = true
            @cliente = titular
            puts "Conta #{self.num_conta}-#{self.digito} vinculada ao cliente #{self.cliente.nome}"
        else
            puts "Cliente inativo no sistema... favor verificar"
        end
    end

    #private
    def sacar(valor)
        if @saldo > valor && @ativo == true
            @saldo -= valor  
            puts "Saque de $#{valor} realizado com sucesso.."
            puts "Saldo Atual: $#{@saldo}"
        else
            puts "falha, conta inativa.... "          
        end
    end

    def mostrar_conta
        puts "-" *30
        puts "Conta Numero: #{self.num_conta}"
        puts "Digito: #{self.digito}"
        puts "Titular: #{self.cliente.nome}"
        puts "SALDO $#{self.saldo} "
        puts "Ativo: #{@ativo}"
        puts "-" *30
    end

    def transferir(conta_favorecida, valor)
        if (self.saldo > valor)
            if (conta_favorecida.ativo)
                self.sacar(valor)
                conta_favorecida.depositar(valor)
                puts "Transferencia bem sucedida para #{conta_favorecida.cliente.nome}"
            else
                puts "Conta invalida ou inativa... Numero: #{conta_favorecida.num_conta}-#{conta_favorecida.digito}"
            end
        else

        end
    end

    #protected
    def depositar(valor)
        if valor > 0 && @ativo == true
            @saldo += valor
            puts "Deposito realizado com sucesso.."
        else
            puts "conta inativa, impossivel realizar deposito..."
        end
    end

end



