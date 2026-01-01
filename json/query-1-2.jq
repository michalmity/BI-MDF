# Najde všechny typy paliv mezi benzínkami
[ .["@graph"][].paliva[] | select(.typ != null) | .typ ] | unique
