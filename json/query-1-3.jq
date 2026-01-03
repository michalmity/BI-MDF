# Najde benzínky, které mají otevřeno v '24:00'
.["@graph"][] | select(.oteviracidoba | contains("24:00")) | .nazev
