class Category < ActiveRecord::Base

  has_many :authors
  has_many :books

  def slug
    name.downcase.gsub(" ","-")
  end

  def self.find_by_slug(slug)
    Category.all.find{|category| category.slug == slug}
  end

end
