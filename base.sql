-- DROP TABLE rak_buku, buku ;

CREATE TABLE "rak_buku" (
    "id" BIGSERIAL PRIMARY KEY,
    "books" VARCHAR(80)
);

CREATE TABLE "buku" (
    "id" BIGSERIAL PRIMARY KEY,
    "title_book" VARCHAR,
    "description" TEXT,
    "author" VARCHAR,
    "kategori" VARCHAR,
    "bookshelf" VARCHAR,
    "created_at" TIMESTAMP
);

INSERT INTO "buku" ("title_book", "description", "author", "kategori", "bookshelf", "created_at" ) VALUES ('Ayat ayat kiri', 'no descriptions', 'DN Aidit', 'komunis', 'rak nanas', NOW());
SELECT * FROM "buku";

CREATE TABLE "petugas" (
    "id" BIGSERIAL PRIMARY KEY,
    "name" VARCHAR,
    "age" int,
    "created_at" TIMESTAMP
);

INSERT INTO "petugas" ("name", "age", "created_at") VALUES ('Arya Wiradinatakusuma', 99, NOW());
SELECT * FROM "petugas";





-- create table "users" (
--     "id" int serial primary key,
--     "email" varchar(80) unique,
--     "password" varchar(42) not null,
--     "email" varchar(80),
-- );

-- select "email", "password" from "users";

-- insert into "users" ("email", "password") values ('<admin@mail.com>', '1234');

-- update "users" set "password"='4321' where "email" = '<admin@mail.com>';