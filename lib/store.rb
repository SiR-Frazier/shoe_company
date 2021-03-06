class Store < ActiveRecord::Base
  has_and_belongs_to_many :shoes
  validates(:name, {:presence => true, :length => {:maximum => 100}})
  before_save(:capitalize)

  private

  def capitalize
    self.name = name.gsub(/\w+/, &:capitalize)
  end

end
