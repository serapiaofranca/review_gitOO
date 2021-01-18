#!/usr/bin/env ruby
require_relative "agencia"

class Banco
    
    attr_accessor :banco_nome, :banco_numero, :banco_id, :agencias
    
    def initialize(nome)
        @banco_nome = nome
        @banco_numero += 1
        @banco_id += 1
        @agencias = []
    end

    def mostrar_banco
        puts "Banco: #{@banco_nome}"
        puts "Codigo Banco: #{@banco_id}"        
    end

    def incluir_agencia(agencia)
        @agencias << agencia
    end

    def listar_agencias
        puts "Agencia Numero ::: Agencia Nome :::"

        @agencias.each do |agencia|
            agencia.mostrar_agencia 
        end
    end
end

#bradesco = Banco.new
#bradesco.cadastrar_banco("Bradesco")
#bradesco.mostrar_banco
