# sinatra-books-library

This is a content management system for a shared library of books.

There are 3 models: Book, Category, Author

A Book has a title, author and category. A Book belongs_to an Author.

A Category has_many Author, and has_many Books.

An Author has_many Books, and has_one Category.

The Author can only edit the details of his/her own Book after login, but can view all the books.

The 10 main classes of the Dewey Decimal System are:

000—Computer science, information and general works
100—Philosophy and psychology
200—Religion
300—Social Sciences
400—Language
500—Science
600—Technology and applied science
700—Arts and recreation
800—Literature
900—History and geography
