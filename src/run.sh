#!/usr/bin/env bash
set -Ceu
#---------------------------------------------------------------------------
# docoptを使ってみる。
# CreatedAt: 2021-10-07
#---------------------------------------------------------------------------
Run() {
	THIS="$(realpath "${BASH_SOURCE:-0}")"; HERE="$(dirname "$THIS")"; PARENT="$(dirname "$HERE")"; THIS_NAME="$(basename "$THIS")"; APP_ROOT="$PARENT";
	cd "$HERE"
	find . -name '*.py' | sort | while read CODE; do
		echo "code: $CODE"
		python3 "$CODE"
		python3 "$CODE" PPP
		python3 "$CODE" -t TTT PPP
		python3 "$CODE" -f FFF PPP
		python3 "$CODE" -t TTT -f FFF PPP
		python3 "$CODE" -f FFF -t TTT PPP
	done
	python3 "./0.py"
	python3 "./0.py" PPP
	python3 "./0.py" -t TTT PPP
	python3 "./0.py" -f FFF PPP
	python3 "./0.py" -t TTT -f FFF PPP
	python3 "./0.py" -f FFF -t TTT PPP
	python3 "./1.py"
	python3 "./1.py" PPP
	python3 "./1.py" -t TTT PPP
	python3 "./1.py" -f FFF PPP
	python3 "./1.py" -t TTT -f FFF PPP
	python3 "./1.py" -f FFF -t TTT PPP
	python3 "./2.py"
	python3 "./2.py" PPP
	python3 "./2.py" -t TTT PPP
	python3 "./2.py" -f FFF PPP
	python3 "./2.py" -t TTT -f FFF PPP
	python3 "./2.py" -f FFF -t TTT PPP
	python3 "./3.py"
	python3 "./3.py" PPP
	python3 "./3.py" -t TTT PPP
	python3 "./3.py" -f FFF PPP
	python3 "./3.py" -t TTT -f FFF PPP
	python3 "./3.py" -f FFF -t TTT PPP
}
Run "$@"
