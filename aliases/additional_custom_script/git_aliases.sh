alias gst="git status"
alias gp="git push"
alias gfap="git fetch --all --prune"
alias grob="bash $HOME/.additional_custom_script/dont_source/grob.sh"
function gad() {
	git add "$1"
}
function gcm() {
	git commit -m "$1"
}
function gck() {
	git checkout "$1"
}
function gdl {
        git branch -D "$1"
}
function gdr {
        git push origin --delete "$1"
}
function gda {
        gdl "$1";
        gdr "$1";
}
function gnb {
        git checkout -b "$1"
}
function gmessage() {
    git commit -m "$1: $2"
}
function gcle() {
    gmessage "clean" "$*"
}
function genh() {
    gmessage "enh" "$*"
}
function gfix() {
    gmessage "fix" "$*"
}
function gdoc() {
    gmessage "doc" "$*"
}
function gcom() {
	git commit -m "$1"
}
function gfea() {
    gmessage "feat" "$*"
}
