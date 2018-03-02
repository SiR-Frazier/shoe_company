require 'spec_helper'

  describe(Shoe) do
    it("checks to make sure field is not empty") do
      shoe = Shoe.new({:brand => ""})
      expect(shoe.save()).to(eq(false))
    end
  end
