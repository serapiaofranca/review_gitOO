#!/usr/bin/env ruby

require_relative "conta_bancaria"
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
conta_rogerio = Conta.new(rogerio)
#conta_rogerio.criar_conta(rogerio)

conta_maria = Conta.new(maria)
#conta_maria.criar_conta(maria)

# deposita e saca conta A
conta_rogerio.depositar(300)
conta_rogerio.sacar(50)

# deposita e saca conta B
conta_maria.depositar(500)
conta_maria.sacar(100)

# transferir de conta B para conta A
conta_maria.transferir(conta_rogerio, 130)

conta_rogerio.mostrar_conta