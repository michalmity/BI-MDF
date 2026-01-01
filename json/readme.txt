Úloha 4 - JSON

Soubory:
- data-1.jsonld: Data benzínek v JSON-LD formátu, validní vůči schema-1.json. Obsahuje @context pro mapování na RDF.
- schema-1.json: JSON Schema definující strukturu dat (Benzínka -> Paliva -> Dodavatelé).

JQ Transformace:
1. query-1-1.jq: Extrahuje z dat jednoduchý seznam objektů obsahující název benzínky a její otevírací dobu.
2. query-1-2.jq: Prochází všechny benzínky a vrací pole unikátních názvů paliv (např. ["Diesel", "LPG", "Natural 95"...]).
3. query-2-1.jq: Filtruje benzínky a vrací názvy těch, které mají otevřeno v 24:00.
