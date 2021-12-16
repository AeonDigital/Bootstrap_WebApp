#!/bin/bash -eu
# myShellEnv v 1.0 [aeondigital.com.br]







#
# Imprime todas as variáveis do arquivo de configuração indicado.
#
# Linhas comentadas não serão mostradas.
#
#   @param string $1
#   Caminho até o arquivo que deve ser verificado.
#
mcfPrintVariables()
{
  mcfPrintSectionVariables "" "$1";
}
