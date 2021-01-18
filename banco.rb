#!/usr/bin/env ruby

class Banco
    attr_reader :banco_id
    attr_accessor :banco_nome, :banco_numero, :agencias

    def initialize
        @banco_nome = nil
        @banco_id = 0
        @banco_numero = 0
        @agencias << []
    end

    def cadastrar_banco(nome)
        banco = Banco.new
        @banco.banco_nome = nome
        @banco.banco_numero += 1
        @banco.banco_id +=1
    end
end