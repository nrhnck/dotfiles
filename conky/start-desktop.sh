#!/usr/bin/env fish

set -gx CONKY_FILE "/home/nrhnck/org/todo.org"

if test (count $argv) -eq 0
    if killall conky 2>/dev/null
        echo "Todo widget hidden."
        exit 0
    end
    conky -c ~/.config/conky/file.conf &
    exit 0
end

if test "$argv[1]" = "--auto"
    if python3 /home/nrhnck/.config/conky/parse_todo.py --check
        killall conky 2>/dev/null
        conky -c ~/.config/conky/file.conf &
    else
        killall conky 2>/dev/null
    end
end

