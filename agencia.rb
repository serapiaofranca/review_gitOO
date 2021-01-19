#!/usr/bin/env ruby

class Agencia

    @@add_agencia_numero = 0
    @@add_agencia_id = 7
    attr_reader :agencia_nome, :agencia_numero, :agencia_id
 
    def initialize(nome)
        @@add_agencia_numero += 1
        @agencia_nome = nome
        @agencia_numero = @@add_agencia_numero
        @agencia_id = @@add_agencia_id
    end

    def mostrar_agencia
        puts "Agencia: #{@agencia_nome}     Numero: #{agencia_numero}-#{@agencia_id}"        
    end
end

