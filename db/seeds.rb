books_list = {
  "Beginning Ruby : From Novice to Professional" => {
    :author_id => 1,
    :category_id => 1,
    :date_published => "Jan 30 2016",
    :summary => "Your must-read guide to learning Ruby from the ground up, this book will teach you the principles behind object-oriented programming and within a few chapters you will be able to create a fully functional Ruby application. -- Edited summary fro",
    :content => "New York (CNN Business)Anxiety on Wall Street may not bode well for high-profile private companies that hope to go public this year.Uber and Lyft have confidentially filed initial public offering documents with the Securities and Exchange Commission, which means more details about their financials should be available for investors within the coming months.
    The two could debut on Wall Street by late spring or early summer. Their IPOs would be gigantic: Uber was last valued at $72 billion, while Lyft was recently valued at $15 billion.
    Airbnb, WeWork and Pinterest, which are all valued at $10 billion at least, are also rumored to be considering an IPO this year.
    With a growing number of economists predicting at least a minor recession by 2020, it may make sense for these companies to go public now before a downturn in the broader markets makes those plans untenable.
    But a volatile stock market could still scare some of them away from launching an IPO. The problems plaguing Facebook and some other tech darlings might also serve as a cautionary tale.
    Year of the unicorn?
    Some think that the twists and turns in the broader market may lead smaller companies that had been contemplating an IPO to hold off for a bit. But the market would have to drop much further to cause the top private companies to delay their IPO plans.
    \"We could see fewer — but bigger IPOs — this year. The unicorns may be more insulated unless the broader market gets even more volatile,\" said Matt Kennedy, senior IPO market strategist at Renaissance Capital, a provider of institutional IPO research."
      },
  "Coding : everything you need to get started with programming using Python" => {
    :author_id => 1,
    :category_id => 1,
    :date_published => "Aug 23 2017",
    :summary => "Simple explanations and step-by-step guides ease users through the features of the Python programming language, providing them with everything they need to write code in the real world. --Publisher's description",
    :content => "New York (CNN Business)A Millennial pink couch, faux sheep skin pillows and gold accents are some of the first things you notice when you walk into Village Studio, an Instagram-worthy penthouse apartment in Manhattan's SoHo neighborhood. Everything is meticulously arranged, and the space is spotless.

Vickie Segar, the founder of Village Marketing -- a firm that connects social media stars with brands for partnership deals -- received a lot of attention in the fall when she first showed off the space, designed to be the perfect background for Instagram photos.
The $15,000-per-month two bedroom apartment is decorated with furniture provided by Wayfair, fresh flowers, trendy art pieces and carefully organized bookshelves."
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
