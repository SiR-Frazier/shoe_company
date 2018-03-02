require 'spec_helper'

  describe(Shoe) do
    describe(".findbrand") do
      it("sorts shoes by their brand") do
        test_shoe = Shoe.create({:brand => "Nike", :price => 110, :id => nil})
        test_shoe2 = Shoe.create({:brand => "Adidas", :price => 100, :id => nil})
          expect(Shoe.findbrand("Nike")).to(eq([test_shoe]))
      end
    end
  end
