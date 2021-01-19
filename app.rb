#!/usr/bin/env ruby

require_relative "conta_corrente"
require_relative "cliente"
require_relative "banco"
require_relative "agencia"

 ## cria cliente A
 rogerio = Cliente.new("Rogerio Serapiao", "111.111.111-11")
 rogerio.ativar_cliente
 rogerio.imprimir_cliente

 # cria cliente B
 maria = Cliente.new("Maria Serapiao", "222.111.111-22")
 maria.ativar_cliente
 maria.imprimir_cliente


 # cria contas cliente A e B
 conta_rogerio = ContaCorrente.new(rogerio)
 #conta_rogerio.criar_conta(rogerio)

 conta_maria = Conta.new(maria)
 #conta_maria.criar_conta(maria)

 # deposita e saca conta A
 conta_rogerio.depositar(300)
 conta_rogerio.sacar(50)

 # deposita e saca conta B
 conta_maria.depositar(500)
 conta_maria.sacar(100)

 # transferir de conta A para conta B com tarifa
 conta_rogerio.transferir(conta_maria, 250)  ## falha, saldo insuficiente
 conta_rogerio.transferir(conta_maria, 150)

 conta_rogerio.mostrar_conta
 conta_maria.mostrar_conta

puts "*" * 30
bradesco = Banco.new("Bradesco")
bradesco.mostrar_banco
puts "*" * 30
caixa = Banco.new("CEF")
caixa.mostrar_banco
puts "*" * 30
itau = Banco.new("Itau")
itau.mostrar_banco
puts "*" * 30
estacao = Agencia.new("Estacao")
estacao.mostrar_agencia
puts "*" * 30
brasil = Agencia.new("Avenida Brasil")
brasil.mostrar_agencia
puts "*" * 30
bradesco.incluir_agencia(estacao)
bradesco.incluir_agencia(brasil)
bradesco.listar_agencias
puts "*" * 30
