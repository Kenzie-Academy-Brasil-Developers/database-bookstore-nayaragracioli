SELECT * FROM books;

SELECT * FROM books 
JOIN books_categories ON books."id" = books_categories."bookId" 
JOIN categories ON categories."id" =  books_categories."categoryId" WHERE categories."name" = 'Fantasia';


SELECT books."id" AS "bookId",
books."name" AS "bookName",
books."pages" AS "bookPages",
books."createdAt" AS "bookCreatedAt",
books."updateAt" AS "bookUpdateAt",
categories."id" AS "categoryId",
categories."name" AS "categoryName",
categories."createdAt" AS "categoryCreatedAt",
categories."updateAt" AS "categoryUpdateAt"
FROM books 
JOIN books_categories ON books."id" = books_categories."bookId" 
JOIN categories ON categories."id" =  books_categories."categoryId";


SELECT books."id" AS "bookId",
books."name" AS "bookName",
books."pages" AS "bookPages",
books."createdAt" AS "bookCreatedAt",
books."updateAt" AS "bookUpdateAt",
authors."id" AS "authorId",
authors."name" AS "authorName",
authors."bio" AS "authorBio"
FROM books 
JOIN authors ON authors."id" =  books."authorId";