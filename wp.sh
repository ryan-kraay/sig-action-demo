#!/usr/bin/env bash


bats_format_file_line_reference_custom() {
   printf -v "$output" "%s#L%d" "$1" "$2"
}
export -f bats_format_file_line_reference_custom

PWD=.
TERM=vt100 $PWD/example.bats --formatter pretty --report-formatter junit -o $PWD/out  --line-reference-format custom
