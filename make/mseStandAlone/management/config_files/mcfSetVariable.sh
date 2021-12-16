#!/bin/bash -eu
# myShellEnv v 1.0 [aeondigital.com.br]







#
# Permite editar uma configuração do tipo chave=valor que está armazenada
# em um arquivo de configuração.
#
#   @param string $1
#   Nome da variável alvo.
#
#   @param string $2
#   Valor que será atribuido à variável.
#
#   @param string $3
#   Caminho até o arquivo que deve ser verificado.
#
mcfSetVariable()
{
  mcfSetSectionVariable "" "$1" "$2" "$3";
}
