#!/usr/bin/env ruby

require_relative "conta_bancaria"
require_relative "cliente"
require_relative "banco"
require_relative "agencia"

rogerio.criar_cliente("Rogerio", "123.123.123-11")
rogerio.mostrar_cliente

puts "*" * 30
conta_rogerio.criar_conta(rogerio)
conta_rogerio.depositar(300)
conta_rogerio.mostrar_conta
conta_rogerio.sacar(100)
conta_rogerio.mostrar_conta
puts "*" * 30
conta_rogerio.cliente.mostrar_cliente

puts "*" * 30
maria.criar_cliente("Maria das Silvas", "333.123.123-33")
maria.mostrar_cliente

puts "*" * 30
conta_maria.criar_conta(maria)
conta_maria.depositar(500)
conta_maria.mostrar_conta

puts "*" * 30
conta_maria.sacar(100)
conta_maria.transferir(conta_rogerio, 100)
conta_maria.mostrar_conta

puts "*" * 30
conta_rogerio.mostrar_conta

puts "*" * 30
bradesco = Banco.new
bradesco.cadastrar_banco("Bradesco")
bradesco.mostrar_banco
puts "*" * 30
caixa = Banco.new
caixa.cadastrar_banco("CEF")
caixa.mostrar_banco
puts "*" * 30
itau = Banco.new
itau.cadastrar_banco("Itau")
itau.mostrar_banco
puts "*" * 30
estacao = Agencia.new
estacao.cadastrar_agencia("Estacao")
estacao.mostrar_agencia
puts "*" * 30
brasil = Agencia.new
brasil.cadastrar_agencia("Avenida Brasil")
brasil.mostrar_agencia
puts "*" * 30
bradesco.incluir_agencia(estacao)
bradesco.incluir_agencia(brasil)
bradesco.listar_agencias
puts "*" * 30
