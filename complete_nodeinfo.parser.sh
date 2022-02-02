# Basic auto completion for nodeinfo parser
#
# Copyright (c) 2015-2022 Christoph Niethammer <niethammer@hlrs.de>
#

NODEINFO_PARSER_BIN="nodeinfo.parser"

function _nodeinfo_parser() {
    local cur=${COMP_WORDS[$COMP_CWORD]}
    if [[ $COMP_CWORD -lt 2 ]] ; then
        COMPREPLY=($(compgen -f $cur))
    else
        readarray -t infos <<<"$($NODEINFO_PARSER_BIN ${COMP_WORDS[1]})"
        for info in "${infos[@]}"; do
            possible=$(IFS= compgen -W "$info" -- "$cur")
            [[ $possible ]] && COMPREPLY+=( "$possible" )
        done
    fi
}

complete -F _nodeinfo_parser $NODEINFO_PARSER_BIN
