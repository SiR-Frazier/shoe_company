class Shoe < ActiveRecord::Base
  has_and_belongs_to_many :stores
  validates(:brand, {:presence => true, :length => { :maximum => 100}})
  validates(:price, :presence => true)
  before_save(:capitalize)
  
  private

  def capitalize
    self.brand = brand.gsub(/\w+/, &:capitalize)
  end


end
