alias actv="source venv/bin/activate"
alias cvenv="python3 -m venv venv"
alias edzsh="code ~/.zshrc"
function killport() {
    kill -9 $(lsof -t -i:$1)
}
function condaremove() {
    conda env remove --name $1
}
