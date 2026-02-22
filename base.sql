-- DROP TABLE rak_buku, buku, petugas, kategori, peminjam, borrow_books 

CREATE TABLE "rak_buku" (
    "id" BIGSERIAL PRIMARY KEY UNIQUE,
    "rak_name" VARCHAR(30),
    "created_at" TIMESTAMP
);

CREATE TABLE "buku" (
    "id" BIGSERIAL PRIMARY KEY,
    "title_book" VARCHAR(100),
    "description" TEXT,
    "author" VARCHAR(100),
    "kategori_id" int,
    "bookshelf_id" int,
    "created_at" TIMESTAMP
);

CREATE TABLE "petugas" (
    "id" BIGSERIAL PRIMARY KEY,
    "name" VARCHAR(70),
    "age" INT,
    "created_at" TIMESTAMP
);

CREATE TABLE "kategori" (
    "id" BIGSERIAL PRIMARY KEY,
    "name" VARCHAR(30)
);

CREATE TABLE "borrow_books" (
    "id" BIGSERIAL PRIMARY KEY,
    "book_id" INT,
    "peminjam_name" VARCHAR(100),
    "petugas_name" VARCHAR(100),
    "forfeit" DECIMAL
);
  
CREATE TABLE "peminjam" (
    "id" BIGSERIAL PRIMARY KEY,
    "name" VARCHAR(100),
    "age" INT,
    "address" TEXT,
    "borrow_books" VARCHAR(100)
);
  
ALTER TABLE "buku" ADD CONSTRAINT fk_rak_buku FOREIGN KEY (bookshelf_id) REFERENCES rak_buku(id);
ALTER TABLE "buku" ADD CONSTRAINT fk_kategori FOREIGN KEY (kategori_id) REFERENCES kategori(id);
ALTER TABLE "borrow_books" ADD CONSTRAINT fk_book_id FOREIGN KEY (book_id) REFERENCES buku(id);

INSERT INTO kategori (name) VALUES ('Fiksi'), ('Fiksi'), ('Fiksi'), ('Fiksi'), ('Fiksi'), ('Fiksi'), ('Fiksi'), ('Fiksi'), ('Fiksi'), ('Fiksi');
INSERT INTO rak_buku (rak_name) VALUES ('A'), ('B'), ('C'), ('D'), ('E'), ('F'), ('G'), ('H'), ('I'), ('J') ;
INSERT INTO petugas (name, age) VALUES ('Andi',12),('Andi',12),('Andi',12),('Andi',12),('Andi',12),('Andi',12),('Andi',12),('Andi',12),('Andi',12),('Andi',12);

SELECT * FROM kategori;