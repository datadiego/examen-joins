SELECT
pokemons.id AS pokedex,
pokemons.nombre AS pokemon,
GROUP_CONCAT(tipos.nombre, ', ') AS tipo,
generacion.nombre AS generacion
FROM pokemons
JOIN tipos ON tipos.id = pokemon_tipo.tipo_id
JOIN pokemon_tipo ON pokemons.id = pokemon_tipo.pokemon_id
JOIN generacion ON pokemons.generacion_id = generacion.id
GROUP BY (pokemon)
ORDER BY(pokedex);
