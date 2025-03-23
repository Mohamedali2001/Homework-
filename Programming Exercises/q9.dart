// Library Management System
// Create a system to manage books in a library.
// Implement a Book class with properties like title, author, isbn, and isAvailable.
// Implement a Library class with methods:
// - addBook(Book book): Adds a book to the library.
// - borrowBook(String isbn): Marks a book as borrowed if available.
// - returnBook(String isbn): Marks a book as available again.
// - searchByTitle(String title): Returns books matching the title.
// Ensure that the system correctly updates the book's availability.
void main() {
  Library lib = Library();
  lib.addbook(
    Book(
      title: "The Great Gatsby",
      author: "F. Scott Fitzgerald",
      isbn: "123456",
    ),
  );
  lib.addbook(
    Book(title: "To Kill a Mockingbird", author: "Harper Lee", isbn: "345678"),
  );
  lib.displayBooks();
  lib.borrowBook("234567");
  lib.returnBook("234567");
  lib.searchByTitle("The Great Gatsby");
  lib.displayBooks();
}

class Book {
  String title;
  String author;
  String isbn;
  bool isAvailable = true;
  Book({required this.title, required this.author, required this.isbn});
}

class Library {
  List<Book> books = [];
  void addbook(Book book) {
    books.add(book);
    print("the book of title :${book.title} add in the Library");
  }

  void borrowBook(String isbn) {
    for (var book in books) {
      if (book.isbn == isbn) {
        if (book.isAvailable) {
          book.isAvailable = false;
          print("You have borrowed '${book.title}'.");
        } else {
          print("Sorry, '${book.title}' is already borrowed.");
        }
        return;
      }
    }
    print("Book with ISBN $isbn not found.");
  }

  void returnBook(String isbn) {
    for (var book in books) {
      if (book.isbn == isbn) {
        if (!book.isAvailable) {
          book.isAvailable = true;
          print("You have returned '${book.title}'.");
        } else {
          print("'${book.title}' was not borrowed.");
        }
        return;
      }
    }
    print("Book with ISBN $isbn not found.");
  }

  void searchByTitle(String title) {
    if (books.contains(title) != null) {
      print(
        "the find of book is $title in libary and this book is :${books.contains(title)}",
      );
    } else {
      print(
        "the not find of book is $title in libary and this book is :${books.contains(title)}",
      );
    }
  }

  void displayBooks() {
    if (books.isEmpty) {
      print("The library is empty.");
    } else {
      print("\nLibrary Books:");
      for (var book in books) {
        print(book);
      }
    }
  }
}
