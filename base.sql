-- DROP TABLE rak_buku, buku, petugas, kategori, peminjam, borrow_books;-- DROP TABLE rak_buku, buku, petugas, kategori, peminjam, borrow_books, status; 

CREATE TABLE "rak_buku" (
    "id" BIGSERIAL PRIMARY KEY UNIQUE,
    "rak_name" VARCHAR(30),
    "created_at" TIMESTAMP
);

CREATE TABLE "buku" (
    "book_id" BIGSERIAL PRIMARY KEY,
    "title_book" VARCHAR(100),
    "description" TEXT,
    "penulis_id" int, -- fk
    "kategori_id" int,  -- fk
    "bookshelf_id" int,
    "total_book" int,
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

CREATE TABLE "status" (
    "status_id" BIGSERIAL PRIMARY KEY,
    "borowwed" VARCHAR(30),
    "returned" VARCHAR(30),
    "lost" VARCHAR(30)
);
CREATE TABLE "borrow_books" (
    "id" BIGSERIAL PRIMARY KEY,
    "book_id" INT, -- fk
    "peminjam_name_id" INT, -- fk
    "petugas_name_id" INT, -- fk
    "date" TIMESTAMP,
    "book_status" VARCHAR(30),
    "due" VARCHAR(30),
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
ALTER TABLE "borrow_books" ADD CONSTRAINT fk_book_id FOREIGN KEY (book_id) REFERENCES buku(book_id);
ALTER TABLE "borrow_books" ADD CONSTRAINT fk_peminjam_name_id FOREIGN KEY (peminjam_name_id) REFERENCES peminjam(id);
ALTER TABLE "borrow_books" ADD CONSTRAINT fk_petugas_name_id FOREIGN KEY (petugas_name_id) REFERENCES petugas(id);

INSERT INTO kategori (name) VALUES ('Komik'), ('Sains'), ('Sejarah'), ('Matematika'), ('Novel'), ('Bahasa'), ('Fiksi'), ('Fiksi'), ('Fiksi'), ('Sastra');

INSERT INTO rak_buku (rak_name) VALUES ('A'), ('B'), ('C'), ('D'), ('E'), ('F'), ('G'), ('H'), ('I'), ('J') ;

INSERT INTO petugas (name, age, created_at ) VALUES ('Andi',12, NOW()),('Ahmad',13, NOW()),('Ari',14, NOW()),('Adit',15, NOW()),('Agis',16, NOW()),('Asep',17, NOW()),('Anggi',20, NOW()),('Aria',24, NOW()),('Anton',45, NOW()),('Aang',29, NOW());

SELECT * FROM petugas;