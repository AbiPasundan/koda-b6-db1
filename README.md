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
        string title_book
        string description
        string author
        string kategori
        string bookshelf
        timestamp created_at
    }

    kategori {
        string id
        string name
    }

    rak_buku||--|{buku : ""
    rak_buku {
        int id
        string books
        timestamp created_at
    }
    petugas||--|{borrowing_book : ""
    petugas {
        int id
        string name
        int age
        timestamp created_at
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
