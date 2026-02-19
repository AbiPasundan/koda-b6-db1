# Minitask

<!--

one to one relationship
BOOK ||--o{ AUTHOR : allows

AUTHOR ||--||buku : has
AUTHOR {
    int id
    string name
    int age
    string books
}

||--|{ : One and only one to One or many
||--o{ : One and only one to Zero or many
|o--|{ : Zero or one to One or many

 -->

```mermaid

erDiagram
    buku ||--|{kategori: ""
    buku }|--|{petugas: ""
    buku }|--||peminjam: ""
    buku {
        string id
        string name
        string title
        string author
        string kategori
        string bookshelf
    }

    kategori {
        string id
        string name
    }

    rak_buku||--|{buku : ""
    rak_buku {
        int id
        string books
    }
    petugas||--|{borrowing_book : ""
    petugas {
        int id
        string name
        string age
    }
    peminjam||--|{borrowing_book : ""
    peminjam {
        int id
        string name
        string age
        string addrees
        string borrow_books
    }

    borrowing_book {
        int id
        string book
        string peminjam_name
        string expired_date
        string forfeit
    }
```
