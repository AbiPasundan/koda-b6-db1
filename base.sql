-- DROP TABLE rak_buku, buku, petugas ;

CREATE TABLE "rak_buku" (
    "id" BIGSERIAL PRIMARY KEY,
    "books" VARCHAR(30)
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

INSERT INTO "buku" ("title_book", "description", "author", "kategori", "bookshelf", "created_at" ) VALUES ('Ayat ayat kiri', 'no descriptions', 'DN Aidit', 'komunis', 'rak nanas', NOW());
INSERT INTO "buku" VALUES (DEFAULT, '10 Dosa Besar', 'no descriptions', 'cihuyyyy', 'Math', 'rak nanas', NOW());
SELECT * FROM "buku" ORDER BY "id" ;
UPDATE buku SET "title_book" = 'deifloubekv' WHERE "id" = 1;
SELECT * FROM "buku" WHERE "id" = 1 ;
SELECT "title_book" FROM "buku" WHERE "id" = 2 ;

CREATE TABLE "petugas" (
    "id" BIGSERIAL PRIMARY KEY,
    "name" VARCHAR(70),
    "age" INT,
    "created_at" TIMESTAMP
);
INSERT INTO "petugas" ("name", "age", "created_at") VALUES ('Arya Wiradinatakusuma', 99, NOW());
SELECT * FROM "petugas";


CREATE TABLE "kategori" (
    "id" BIGSERIAL PRIMARY KEY,
    "name" VARCHAR(30)
);
INSERT INTO "kategori" VALUES ( DEFAULT, 'testing');
SELECT * FROM "kategori";

CREATE TABLE "peminjam" (
    "id" BIGSERIAL PRIMARY KEY,
    "name" VARCHAR(100),
    "age" INT,
    "address" TEXT,
    "borrow_books" VARCHAR(100)
)
-- INSERT INTO "peminjam" VALUES ( DEFAULT, 'nama peminjam', 123, 'DEPOK', buku.id);
ALTER TABLE "buku" ADD CONSTRAINT fk_rak_buku FOREIGN KEY (bookshelf) REFERENCES rak_buku(id)