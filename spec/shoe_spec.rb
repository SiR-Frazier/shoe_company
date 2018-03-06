require 'spec_helper'

  describe(Shoe) do
    it { should has_and_belongs_to_many(:stores) }

    it("checks to make sure brand field is not empty") do
      shoe = Shoe.new({:brand => ""})
      expect(shoe.save()).to(eq(false))
    end

    it("checks to make sure the price field is not empty") do
      shoe = Shoe.new({:price => ""})
      expect(shoe.save()).to(eq(false))
    end

    it("ensures that the length of the brand is at most 100 characters") do
      shoe =Shoe.new({:brand => "x".*(101)})
      expect(shoe.save()).to(eq(false))
    end
  end
