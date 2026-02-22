# Minitask

```mermaid

erDiagram
    buku ||--|{kategori: ""
    petugas }|--|{borrowing_book: ""

    buku {
        varchar id pk
        varchar title_book
        varchar description
        varchar author
        varchar kategori_id fk
        varchar bookshelf_id fk
        timestamp created_at
    }

    kategori {
        varchar id pk
        varchar name
    }

    rak_buku||--|{buku : ""
    rak_buku {
        int id pk
        rak_name varchar
        timestamp created_at
    }
    petugas {
        int id pk
        varchar name
        int age
        timestamp created_at
    }
    peminjam ||--||borrowing_book: ""
    peminjam {
        int id pk
        varchar name
        int age
        varchar addrees
    }

    buku ||--|{borrowing_book: ""
    borrowing_book {
        int id pk
        varchar book_id fk
        varchar peminjam_name fk
        varchar petugas_name fk
        varchar forfeit
    }
```
