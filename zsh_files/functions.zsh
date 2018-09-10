##########################################
# Custom ZSH functions 
##########################################

# Man Command colorizer
man() {
	env \
		LESS_TERMCAP_md=$'\e[1;36m' \
		LESS_TERMCAP_me=$'\e[0m' \
		LESS_TERMCAP_se=$'\e[0m' \
		LESS_TERMCAP_so=$'\e[1;40;92m' \
		LESS_TERMCAP_ue=$'\e[0m' \
		LESS_TERMCAP_us=$'\e[1;32m' \
			man "$@"
}

initialize-draft() {
    loc_dir=$(slugify "$1")
    mkdir $loc_dir 
    cd $loc_dir 
    slugify "$1" | xargs -I % touch v1_%.md
}

name-tab() {
    echo -ne "\e]1;$1\a"
}
