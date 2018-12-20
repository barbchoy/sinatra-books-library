class Author < ActiveRecord::Base
  has_many :books
  has_many :categories

  def slug
    name.downcase.gsub(" ","-")
  end

  def find_by_slug(slug)
    Author.all.find{|author| author.slug==slug}
  end
end
