# sinatra-books-library

This is a shared community library content management system.

There are 3 models: Owner, Author, and Book.

An Owner has a name, and has_many Books.

A Book has a title, author and category. It belongs to an Owner.

An Author has a name, and has_many Books. 

An Owner has_many Authors through Books. 
