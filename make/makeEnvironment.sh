#!/usr/bin/env bash
# myShellEnv v 1.0 [aeondigital.com.br]


#
# Configuração do MSE
MSE_GLOBAL_THEME_NAME="mse_inter_theme_default"


#
# Variáveis para comandos Makefile
MK_ROOT_PATH="${PWD}"
MK_WEB_SERVER_DATABASE_BOOTSTRAP_FILE="/etc/database/bootstrap.sql"

MK_WEB_SERVER_ENV_FILE="${MK_ROOT_PATH}/container-config/apache-php-7.4/etc/.env"
MK_LOCAL_BOOTSTRAP_FILE="${MK_ROOT_PATH}/container-config/apache-php-7.4${MK_WEB_SERVER_DATABASE_BOOTSTRAP_FILE}"
MK_LOCAL_CONTAINER_ROOT_DIR="${MK_ROOT_PATH}/container-config/apache-php-7.4"

CONTAINER_WEBSERVER_NAME="dev-php-webserver"
CONTAINER_DBSERVER_NAME="dev-php-dbserver"
GIT_LOG_LENGTH="10"