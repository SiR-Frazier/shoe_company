class Shoe_Store < ActiveRecord::Base
  belongs_to :shoes
  belong_to :stores
end
