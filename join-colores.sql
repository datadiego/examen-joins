SELECT
colores.nombre AS color,
colores.hex,
paletas.nombre AS paleta
FROM colores_paletas
JOIN colores ON colores_paletas.color_id = colores.id
JOIN paletas ON colores_paletas.paleta_id = paletas.id;
