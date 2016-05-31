#===============================================================================
#
#          FILE: func.sh
# 
#         USAGE: ./func.sh 
# 
#   DESCRIPTION: Fichier contenant l'ensemble des fonctions courantes
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: system-administrator (), mobius_sysadmin@mailoo.org
#  ORGANIZATION: 
#       CREATED: 31/05/2016 10:48
#      REVISION:  ---
#===============================================================================


#---  FUNCTION  ----------------------------------------------------------------
#          NAME:  check_root
#   DESCRIPTION:  Fonction permettant de vérifier les droits de l'utilisateur
#    PARAMETERS:  
#       RETURNS:  1 si l'utilisateur n'a pas les droits root
#-------------------------------------------------------------------------------

check_root(){ if [[ $(id -u) -ne 0 ]]; then echo -e "\e[0;31m[-] Error: need to be root to perform this action.\e[0;m"; exit 1; fi }


#---  FUNCTION  ----------------------------------------------------------------
#          NAME:  gen_message
#   DESCRIPTION:  Fonction permettant de générer des messages
#    PARAMETERS:  code du message (warn, error,ok) + message à délivrer
#       RETURNS:  1 si l'utilisateur n'a pas les droits root
#-------------------------------------------------------------------------------

gen_message ()
{

	# PARAM
	if [[ $# -ne 2 ]]; 
		then 
			echo -e "\e[0;31m[-] Error: arguments not found\e[0;m"; exit 1; 
		else 
			case "$1" in
				ok) 
					echo -e "\e[0;32m[+] $2\e[0;m"
				;;
				warn)
					echo -e "\e[0;33m[!] $2\e[0;m"
				;;
				err)
					echo -e "\e[0;31m[-] $2\e[0;m"
					# si le message marque la fin de l'opération
					# exit 1;
				;; 
			esac
			
	fi
		
}	# ----------  end of function gen_message  ----------
