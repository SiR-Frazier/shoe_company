Class Shoe < ActiveRecord::Base
  has_belongs_to_many :stores

  def self.findbrand(search_brand)
  end
end
