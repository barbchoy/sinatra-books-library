# sinatra-books-library

This is a content management system for a shared library of books.

There are 3 models: Book, Category, Author, Owner

A Book has a title, author and category. A Book belongs_to an Author. A Book belongs_to an Owner.

A Category has_many Author, and has_many Books.

An Author has_many Books, and has_many Categories. 

An Owner has a name and has_many Books.
