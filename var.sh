#===============================================================================
#
#          FILE: var.sh
# 
#         USAGE: ./var.sh 
# 
#   DESCRIPTION: Fichier contenant des variables courantes (couleurs ... )
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: system-administrator (), mobius_sysadmin@mailoo.org
#  ORGANIZATION: 
#       CREATED: 31/05/2016 10:46
#      REVISION:  ---
#===============================================================================


#-------------------------------------------------------------------------------
# COULEURS
#-------------------------------------------------------------------------------

# tableau contenant l'ensemble des couleurs les plus utilisées
# pour utiliser une couleur > echo -e "${colors[0-9]}"

declare -a colors='(
						[0]="\e[0;m"
						[1]="\e[0;31m"
						[2]="\e[0;32m"
						[3]="\e[0;33m"
						[4]="\e[0;34m"
						[5]="\e[0;35m"
						[6]="\e[0;36m"
						[7]="\e[0;37m"
				   )'
