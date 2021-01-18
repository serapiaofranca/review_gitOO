#!/usr/bin/env ruby
require_relative "banco"

class Agencia
 
    def initialize(nome)
        @agencia_nome = nome
        @agencia_numero += 1
        @agencia_id +=1
    end

    def mostrar_agencia
        puts "Agencia: #{@agencia_nome}"
        puts "Codigo Agencia: #{@agencia_id}"        
    end
end

#estacao = Agencia.new
#estacao.cadastrar_agencia("Estacao")
#estacao.mostrar_agencia
