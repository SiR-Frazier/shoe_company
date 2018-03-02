Class Shoe < ActiveRecord::Base
  has_belongs_to_many :stores
end
