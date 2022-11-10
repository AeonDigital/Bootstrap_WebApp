#!/usr/bin/env bash
# myShellEnv v 1.0 [aeondigital.com.br]







#
# Carrega as ferramentas de uso geral
. "${PWD}/make/standalone.sh"
. "${PWD}/make/makeEnvironment.sh"
. "${PWD}/make/makeTools.sh"





#
# Mostra log resumido do git
# Use o parametro 'len' para indicar a quantidade de itens a serem mostrados.
gitShowLog() {
  if [ -z ${len+x} ]; then
    len="${GIT_LOG_LENGTH}"
  fi

  tmpLogData=$(git log -${len} --pretty='format:%ad | %s' --reverse --date=format:'%d %B | %H:%M')
  column -e -t -s "|" <<< "${tmpLogData}"
}




#
# Configura o repositório para armazenar localmente as credenciais do git.
gitConfigLocal() {
  local tmpMsgTitle=""

  if [ ! -d .git ]; then
    tmpMsgTitle="FALHA"
    declare -a arrMessage=()
    arrMessage+=("O diretório atual não é um repositório Git.")
    arrMessage+=("Ação abortada")

    mse_inter_showAlert "f" "${tmpMsgTitle}" "arrMessage"
  else
    tmpMsgTitle="ATENÇÃO"
    declare -a arrMessage=()
    arrMessage+=("Iniciando configuração \"local\" para este repositório.")
    arrMessage+=("As configurações locais atualmente definidas serão perdidas.")

    mse_inter_showAlert "a" "${tmpMsgTitle}" "arrMessage"

    mse_inter_showPrompt "" "ca" "Você confirma esta ação?" "bool"
    if [ "$MSE_GLOBAL_PROMPT_RESULT" == "1" ]; then
      local mseGitCredentialsUsePath="~/.gitcredentials"
      if [ "${XDG_CONFIG_HOME}" != "" ]; then
        mseGitCredentialsUsePath="${XDG_CONFIG_HOME}/git/credentials"
      fi
      mkdir -p "${mseGitCredentialsUsePath}"
      chmod 700 "${mseGitCredentialsUsePath}"


      if [ ! -d "${mseGitCredentialsUsePath}" ]; then
        tmpMsgTitle="FALHA"
        declare -a arrMessage=()
        arrMessage+=("Não foi possível criar o diretório \"${mseGitCredentialsUsePath}\".")
        arrMessage+=("Ação abortada")

        mse_inter_showAlert "f" "${tmpMsgTitle}" "arrMessage"
      else
        local tmpISOK="1";
        local tmpRepo="${PWD##*/}";
        local tmpEmail=$(git config --global --get user.email);
        local tmpName=$(git config --global --get user.name);

        if [ "${tmpEmail}" != "" ] && [ "${tmpName}" != "" ]; then
          tmpMsgTitle="ATENÇÃO"
          declare -a arrMessage=()
          arrMessage+=("As seguintes configurações serão usadas:")
          arrMessage+=("Repositório: \"${tmpRepo}\"")
          arrMessage+=("Email      : git config --local user.email \"${tmpEmail}\"")
          arrMessage+=("Nome       : git config --local user.name \"${tmpName}\"")
          arrMessage+=("")
          arrMessage+=("Se escolher 'não' você poderá definir cada um dos itens acima.")

          mse_inter_showAlert "a" "${tmpMsgTitle}" "arrMessage"
          mse_inter_showPrompt "" "ca" "Você deseja usar as configurações padrões?" "bool"
        else
          MSE_GLOBAL_PROMPT_RESULT="0"
        fi

        if [ "$MSE_GLOBAL_PROMPT_RESULT" == "0" ]; then
          if [ "${tmpISOK}" == "1" ]; then
            declare -a arrMessage=()
            mse_inter_showPrompt "" "ca" "Informe o nome do repositório: " "value" "arrMessage"
            if [ "$MSE_GLOBAL_PROMPT_RESULT" == "" ]; then
              tmpISOK="0"

              tmpMsgTitle="FALHA"
              declare -a arrMessage=()
              arrMessage+=("Este valor não pode ficar vazio.")
              arrMessage+=("Ação abortada")

              mse_inter_showAlert "f" "${tmpMsgTitle}" "arrMessage"
            else
              tmpRepo="$MSE_GLOBAL_PROMPT_RESULT"
            fi
          fi


          if [ "${tmpISOK}" == "1" ]; then
            mse_inter_showPrompt "" "ca" "Informe o \"email\" de usuário: " "value"
            if [ "$MSE_GLOBAL_PROMPT_RESULT" == "" ]; then
              tmpISOK="0"

              tmpMsgTitle="FALHA"
              declare -a arrMessage=()
              arrMessage+=("Este valor não pode ficar vazio.")
              arrMessage+=("Ação abortada")

              mse_inter_showAlert "f" "${tmpMsgTitle}" "arrMessage"
            else
              tmpEmail="$MSE_GLOBAL_PROMPT_RESULT"
            fi
          fi


          if [ "${tmpISOK}" == "1" ]; then
            mse_inter_showPrompt "" "ca" "Informe o \"nome\" de usuário: " "value"
            if [ "$MSE_GLOBAL_PROMPT_RESULT" == "" ]; then
              tmpISOK="0"

              tmpMsgTitle="FALHA"
              declare -a arrMessage=()
              arrMessage+=("Este valor não pode ficar vazio.")
              arrMessage+=("Ação abortada")

              mse_inter_showAlert "f" "${tmpMsgTitle}" "arrMessage"
            else
              tmpName="$MSE_GLOBAL_PROMPT_RESULT"
            fi
          fi
        fi


        if [ "${tmpISOK}" == "1" ]; then
          git config --local user.email "${tmpEmail}"
          git config --local user.name "${tmpName}"
          git config --local credential.helper "store --file ${mseGitCredentialsUsePath}/${tmpRepo}"

          #
          # Remove arquivo antigo, se existir
          rm -f "${mseGitCredentialsUsePath}/${tmpRepo}"

          tmpMsgTitle="Sucesso"
          declare -a arrMessage=()
          arrMessage+=("Configurações executadas.")
          arrMessage+=("Suas credenciais serão pedidas no próximo pull/push e após serão lidas")
          arrMessage+=("do arquivo de configuração armazenado em ${mseGitCredentialsUsePath}/${tmpRepo}")

          mse_inter_showAlert "s" "${tmpMsgTitle}" "arrMessage"
        fi
      fi
    fi

  fi
}





#
# Gerencia as ações de controle de tags do git para o projeto.
gitTagManagement() {
  GIT_ACTIVE_BRANCH=$(git branch --show-current)



  #
  # Identifica se a branch atual refere-se ao 'main'
  if [ "${GIT_ACTIVE_BRANCH}" != "main" ]; then
    tmpMsgTitle="ATENÇÃO"
    declare -a arrMessage=()
    arrMessage+=("Alterne para a branch principal \"main\".")
    arrMessage+=(":: git checkout main")

    mse_inter_showAlert "a" "${tmpMsgTitle}" "arrMessage"
  else
    #
    # Identifica se existem alterações não comitadas
    if [ $(git status --porcelain | wc -l) -gt "0" ] && [ 1 == 2 ]; then
      tmpMsgTitle="ATENÇÃO"
      declare -a arrMessage=()
      arrMessage+=("Foram encontradas alterações não comitadas.")
      arrMessage+=("Efetue o commit das alterações para prosseguir")
      arrMessage+=(":: git add .")
      arrMessage+=(":: git commit -m \"message\"")
      arrMessage+=(":: git push origin main")

      mse_inter_showAlert "a" "${tmpMsgTitle}" "arrMessage"
    else

      GIT_ATUAL_TAG="0.0.0-alpha"
      if [ "$(git tag)" != "" ]; then
        GIT_ATUAL_TAG=$(git describe --abbrev=0 --tags)
      fi

      TAG_SPLIT=(${GIT_ATUAL_TAG//-/ })
      TAG_RAW_VERSION=(${TAG_SPLIT[0]//[!0-9.]/ })


      VERSION_SPLIT=(${TAG_RAW_VERSION//\./ })

      PROJECT_VERSION_MAJOR=${VERSION_SPLIT[0]}
      PROJECT_VERSION_MINOR=${VERSION_SPLIT[1]}
      PROJECT_VERSION_PATCH=${VERSION_SPLIT[2]}
      PROJECT_VERSION_STABILITY=("-"${TAG_SPLIT[1]})

      PROJECT_ATUAL_VERSION="${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}.${PROJECT_VERSION_PATCH}"

      ISOK=1

      if [ "$1" == "remark" ]; then
        git tag -d "${GIT_ATUAL_TAG}"
        git push --delete origin "${GIT_ATUAL_TAG}"
        git tag "${GIT_ATUAL_TAG}"
        git push --tags origin
      else
        if [ "$1" == "version" ]; then
          if [ "$2" == "patch" ]; then
            PROJECT_VERSION_PATCH=$((PROJECT_VERSION_PATCH+1))
          else
            if [ "$2" == "minor" ]; then
              PROJECT_VERSION_MINOR=$((PROJECT_VERSION_MINOR+1))
              PROJECT_VERSION_PATCH=0
            else
              if [ "$2" == "major" ]; then
                PROJECT_VERSION_MAJOR=$((PROJECT_VERSION_MAJOR+1))
                PROJECT_VERSION_MINOR=0
                PROJECT_VERSION_PATCH=0
              else
                ISOK=0
              fi
            fi
          fi
        elif [ "$1" == "stability" ]; then
          if [ "$2" == "alpha" ] || [ "$2" == "beta" ] || [ "$2" == "cr" ] || [ "$2" == "r" ]; then
            if [ "$2" == "r" ]; then
              PROJECT_VERSION_STABILITY=""
            else
              PROJECT_VERSION_STABILITY="-$2"
            fi
          else
            ISOK=0
          fi
        else
          ISOK=0
        fi



        if [ "${ISOK}" == "0" ]; then
          tmpMsgTitle="FALHA"
          declare -a arrMessage=()
          arrMessage+=("Parametros incorretos: [ ${1}; ${2} ].")
          arrMessage+=("Nenhuma ação foi realizada.")

          mse_inter_showAlert "f" "${tmpMsgTitle}" "arrMessage"
        else
          USE_VERSION="${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}.${PROJECT_VERSION_PATCH}"
          NEW_VERSION="v${USE_VERSION}${PROJECT_VERSION_STABILITY}"

          #
          # Verifica se é necessário atualizar o versionamento da documentação exportada
          CONF="docs/conf.py"
          if [ -f "${CONF}" ]; then
            OLD_SHORT_VERSION="project_short_version = '.*'"
            NEW_SHORT_VERSION="project_short_version = '${USE_VERSION}'"
            sed -i "s/${OLD_SHORT_VERSION}/${NEW_SHORT_VERSION}/" "${CONF}"

            OLD_FULL_VERSION="project_full_version = '.*'"
            NEW_FULL_VERSION="project_full_version = '${NEW_VERSION}'"
            sed -i "s/${OLD_FULL_VERSION}/${NEW_FULL_VERSION}/" "${CONF}"

            if [ $(git status --porcelain | wc -l) -gt "0" ]; then
              git add .
              git commit -m "Atualizado para a versão ${NEW_VERSION}"
              git push origin main
            fi
          fi

          git tag ${NEW_VERSION}
          git push --tags origin
        fi
      fi
    fi
  fi
}









#
# Permite evocar uma função deste script a partir de um argumento passado ao chamá-lo.
$*
