#!/usr/bin/env ruby
require_relative "agencia"

class Banco

    @@add_banco_num = 0
    @@add_banco_id = 0
    attr_accessor :banco_nome, :banco_numero, :banco_id, :agencias
    
    def initialize(nome)
        @@add_banco_num += 1
        @@add_banco_id += 1
        self.banco_nome = nome
        self.banco_numero = @@add_banco_num
        self.banco_id = @@add_banco_id
        self.agencias = []
    end

    def mostrar_banco
        puts "Banco: #{@banco_nome}"
        puts "Codigo Banco: #{@banco_id}"        
    end

    def incluir_agencia(agencia)
        @agencias << agencia
    end

    def listar_agencias
        puts self.banco_nome 
        puts "Agencia Numero ::: Agencia Nome :::"

        @agencias.each do |agencia|
            agencia.mostrar_agencia 
        end
    end
end


