CREATE DATABASE entrega_4;

-- \c entrega_4

CREATE TABLE authors(
    "id" SERIAL PRIMARY KEY,
    "name" VARCHAR(200) NOT NULL,
    "bio" TEXT NOT NULL
);

SELECT * FROM authors;

CREATE TABLE contact_infos(
    "id" SERIAL PRIMARY KEY,
    "phone" VARCHAR(20),
    "email" VARCHAR(200) NOT NULL,
    "authorId" INTEGER UNIQUE NOT NULL,
    FOREIGN KEY ("authorId") REFERENCES authors("id") ON DELETE CASCADE
);

SELECT * FROM contact_infos;

CREATE TABLE books(
    "id" SERIAL PRIMARY KEY,
    "name" VARCHAR(200) NOT NULL,
    "pages" INTEGER NOT NULL,
    "createdAt" TIMESTAMP NOT NULL,
    "updateAt" TIMESTAMP NOT NULL,
    "authorId" INTEGER,
    FOREIGN KEY ("authorId") REFERENCES authors("id") ON DELETE SET NULL
);

SELECT * FROM books;

CREATE TABLE categories(
    "id" SERIAL PRIMARY KEY,
    "name" VARCHAR(100) NOT NULL,
    "createdAt" TIMESTAMP NOT NULL,
    "updateAt" TIMESTAMP NOT NULL
);

SELECT * FROM categories;

CREATE TABLE books_categories(
    "bookId" INTEGER NOT NULL,
    "categoryId" INTEGER NOT NULL,
    FOREIGN KEY ("bookId") REFERENCES books("id") ON DELETE CASCADE,
    FOREIGN KEY ("categoryId") REFERENCES categories("id") ON DELETE CASCADE
);

SELECT * FROM books_categories;