alias c='g++ -Wall -Wconversion -Wfatal-errors -g -std=c++20 \
	-fsanitize=undefined,address -DLOCAL'
alias gen='cp ~/Code/template.cpp ${PWD##*/}.cpp'

gene(){
	mkdir -p $1
	cd $1
	gen
	code . $1.cpp
}

alias mpv='mpv --no-cache --audio-file-auto=fuzzy --hwdec=vaapi --sub-auto=fuzzy'
