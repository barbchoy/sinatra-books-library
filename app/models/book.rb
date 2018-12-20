class Book < ActiveRecord::Base

  belongs_to :author
  has_one :category

  def slug
    title.downcase.gsub(" ","-")
  end

  def self.find_by_slug(slug)
    Book.all.find{|book| book.slug == slug}
  end
end
