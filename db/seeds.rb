books_list = {
  "Beginning Ruby : From Novice to Professional" => {
    :author_id => 1,
    :category_id => 1,
    :year_published => 2016,
    :summary => "Your must-read guide to learning Ruby from the ground up, this book will teach you the principles behind object-oriented programming and within a few chapters you will be able to create a fully functional Ruby application. -- Edited summary fro"
  },
  "Coding : everything you need to get started with programming using Python" => {
    :author_id => 1,
    :category_id => 1,
    :year_published => 2017,
    :summary => "Simple explanations and step-by-step guides ease users through the features of the Python programming language, providing them with everything they need to write code in the real world. --Publisher's description"
  }
}

books_list.each do |name, book_hash|
  p = Book.new
  p.title = name
  book_hash.each do |attribute, value|
    p[attribute] = value
  end
  p.save
end

authors_list = {
  "Peter Cooper" => {
    :username => "pcooper",
    :password_digest => "pcooper",
    :email => "pcooper@gmail.com"
  },
  "Mike Saunders" => {
    :username => "msaunders",
    :password_digest => "msaunders",
    :email => "msauders@gmail.com"
  }
}

# authors_list.each do |name, author_hash|
#   p = Author.new
#   p.name = name
#   author_hash.each do |attribute, value|
#     p[attribute] = value
#   end
#   p.save
# end

categorys_list = {
  "Computer Science" => {
  },
  "Philosophy and Psychology" => {
  },
  "Religion" => {
  },
  "Social Science" => {
  },
  "Language" => {
  },
  "Science" => {
  },
  "Technology and Applied Science" => {
  },
  "Arts and Recreation" => {
  },
  "Literature" => {
  },
  "History and Geography" => {
  }
}

categorys_list.each do |name, category_hash|
  p = Category.new
  p.name = name
  p.save
end
