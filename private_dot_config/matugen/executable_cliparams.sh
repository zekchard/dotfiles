#/usr/bin/env sh

matugen --verbose \
--show-colors \
--continue-on-error \
--resize-filter gaussian \
--type scheme-tonal-spot \
--mode dark \
$@
