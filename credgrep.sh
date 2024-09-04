#!/bin/bash

#Colour Codes
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"

#Keyword to search
KEYWORD=""

function banner(){
	echo -e ${turquoiseColour}
	figlet -f big credgrep
	echo -e ${endColour}
}

function helpPanel(){
	echo -e "${yellowColour} Usage:${endColour} credgrep${turquoiseColour} [options]${endColour}\n"
	echo -e "${yellowColour} Options:${endColour}"
	echo -e "\t${turquoiseColour} -h:${endColour} Shows the help panel"
	echo -e "\t${turquoiseColour} -k [keyword]:${endColour} Keyword you want to look for (name, domain, password...)"
	exit 0
}

function search() {

    echo -e "\n${yellowColour}[*] Searching${endColour}${turquoiseColour} '$KEYWORD'${endColour}${yellowColour} at the COMB${endColour}${greenColour} [Combination Of Many Breaches]${endColour}\n"

    # RealizaciÃ³n de la bÃºsqueda
    echo -e "\n${turquoiseColour}Performing the search...${endColour}\n"
    curl -s https://api.proxynova.com/comb?query="$KEYWORD"
}

# Check if no arguments were provided and show help
if [ "$#" -eq 0 ]; then
    banner
    helpPanel
fi

# Main application
while getopts ":k:h" opts; do
    case $opts in
        k)
            if [ -z "$OPTARG" ]; then
                echo -e "${redColour}Error: Option -k requires an argument.${endColour}" 1>&2
                banner
                helpPanel
            else
                KEYWORD=$OPTARG
		banner
		search
            fi
            ;;
        h)
            banner
            helpPanel
            ;;
        \?)
            echo -e "${redColour}Invalid option: -$OPTARG${endColour}" 1>&2
            banner
            helpPanel
            ;;
        :)
            echo -e "${redColour}Option -$OPTARG requires an argument.${endColour}" 1>&2
            banner
            helpPanel
            ;;
    esac
done