SELECT 
productos.nombre AS producto,
categorias.nombre AS categoria,
usuarios.nombre AS usuario,
pedidos.cantidad AS cantidad
FROM pedidos
JOIN productos ON pedidos.producto_id = productos.id
JOIN categorias ON categorias.id = productos.categoria_id
JOIN usuarios ON pedidos.usuario_id = usuarios.id;
