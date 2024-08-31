use CATALOGO_P3_DB

CREATE PROCEDURE storedListarArticulos AS

SELECT A.Id, A.Codigo, A.Nombre, A.Descripcion AS ArticuloDescripcion, M.Descripcion AS Marca, C.Descripcion AS Categoria, 
A.Precio, I.ImagenUrl FROM ARTICULOS A 
JOIN MARCAS M ON A.IdMarca = M.Id 
JOIN CATEGORIAS C ON A.IdCategoria = C.Id 
JOIN IMAGENES I ON A.Id = I.IdArticulo