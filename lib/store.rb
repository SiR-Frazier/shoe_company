Class Store < ActiveRecord::Base
  has_belongs_to_many :shoes
end
