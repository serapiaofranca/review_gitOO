#!/usr/bin/env ruby

require_relative "conta_bancaria"
require_relative "cliente"

rogerio = Cliente.new
rogerio.criar_cliente("Rogerio", "123.123.123-11")
rogerio.mostrar_cliente

conta_rogerio = Conta.new
conta_rogerio.criar_conta(rogerio)
conta_rogerio.depositar(300)
conta_rogerio.mostrar_conta

puts "*" * 30
conta_rogerio.sacar(100)
conta_rogerio.mostrar_conta

conta_rogerio.cliente.mostrar_cliente