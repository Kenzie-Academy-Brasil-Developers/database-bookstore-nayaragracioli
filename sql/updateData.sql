UPDATE books SET "name" = 'Harry Potter e o Prisioneiro de Azkaban' WHERE "id" = 1 RETURNING *;


UPDATE books SET "authorId" = 1 WHERE "id" IN (3,4) RETURNING *;