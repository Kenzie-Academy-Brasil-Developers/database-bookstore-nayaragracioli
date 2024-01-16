UPDATE books SET "name" = 'Harry Potter e o Prisioneiro de Azkaban' WHERE "id" = 1 RETURNING *;

UPDATE books SET "authorId" = 1 WHERE "id" = 3, "id" = 4 RETURNING *;
