#!/usr/bin/env ruby

class Cliente

    attr_accessor :nome, :id, :documento, :cliente_ativo 
      
    def initialize
        @id = 0
        @nome = "nome"
        @documento = ["documento"]
        @cliente_ativo = false
    end

    def criar_cliente (nome, documento)
        
        @id += 1
        @nome = nome
        @documento << documento        
        @cliente_ativo = true
        puts "Cliente cadastrado no sistema..."        
    end

    def mostrar_cliente
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



