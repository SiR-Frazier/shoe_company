require 'spec_helper'

describe(Store) do
  it { should has_and_belongs_to_many(:shoes) }

  it("checks to make sure name field is not empty") do
    store = Store.new({:name => ""})
    expect(store.save()).to(eq(false))
  end

  it("ensures that the length of the brand is at most 100 characters") do
    store =Store.new({:name => "x".*(101)})
    expect(store.save()).to(eq(false))
  end

end
