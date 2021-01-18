#!/usr/bin/env ruby

class Cliente

    attr_accessor :nome, :documento, :cliente_ativo, :cliente_num
    @@id = 0
      
    def initialize (nome, documento)
        @@id +=1
        @id = @@id
        @nome = nome
        @documento = documento
        @cliente_ativo = false
    end 

    def ativar_cliente
        self.cliente_ativo = true
    end

    def desativar_cliente
        self.cliente_ativo = false
    end

    def imprimir_cliente
        puts "Codigo: #{@id}"
        puts "Nome: #{@nome}"
        puts "Documento: #{@documento}"
        if @cliente_ativo == true
            puts "Situação:  ATIVO"
        else
            puts "...Cliente inativo..."
        end
    end

end





