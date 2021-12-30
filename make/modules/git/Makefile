#
# Aeon Digital
# Rianna Cantarelli <rianna@aeondigital.com.br>
#
.SILENT:




#
# Mostra log resumido do git
# Use o parametro 'len' para indicar a quantidade de itens a serem mostrados.
log:
	make/makeActions.sh makeExecuteBefore "$@"
	make/modules/git/makeActions.sh gitShowLog "${MAKECMDGOALS}"
	make/makeActions.sh makeExecuteAfter "$@"





#
# Mostra qual a tag atual do projeto.
tag:
	make/makeActions.sh makeExecuteBefore "$@"
	git describe --abbrev=0 --tags
	make/makeActions.sh makeExecuteAfter "$@"

#
# Redefine a tag atualmente vigente para o commit mais recente
tag-remark:
	make/makeActions.sh makeExecuteBefore "$@"
	make/modules/git/makeActions.sh gitTagManagement "remark"
	make/makeActions.sh makeExecuteAfter "$@"

#
# Atualiza o 'patch' da tag atualmente definida
# para a branch principal 'main'.
tag-update:
	make/makeActions.sh makeExecuteBefore "$@"
	make/modules/git/makeActions.sh gitTagManagement "version" "patch"
	make/makeActions.sh makeExecuteAfter "$@"

#
# Atualiza o 'minor version'  da tag atualmente definida
# para a branch principal 'main'.
tag-update-minor:
	make/makeActions.sh makeExecuteBefore "$@"
	make/modules/git/makeActions.sh gitTagManagement "version" "minor"
	make/makeActions.sh makeExecuteAfter "$@"

#
# Atualiza o 'major version'  da tag atualmente definida
# para a branch principal 'main'.
tag-update-major:
	make/makeActions.sh makeExecuteBefore "$@"
	make/modules/git/makeActions.sh gitTagManagement "version" "major"
	make/makeActions.sh makeExecuteAfter "$@"

#
# Atualiza a 'stability' da tag atualmente definida
# para a branch principal 'main'.
#
# Use o parametro 'stability' para indicar qual será a nova 'stability'.
# use apenas um dos seguintes valores: 'alpha'; 'beta'; 'cr'; 'r'
tag-stability:
	make/makeActions.sh makeExecuteBefore "$@"
	make/modules/git/makeActions.sh gitTagManagement "stability" "${stability}"
	make/makeActions.sh makeExecuteAfter "$@"
