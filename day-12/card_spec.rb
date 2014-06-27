require 'rspec'
require './card'

describe "Make sure Card value works" do

  it "values jacks as ten" do
    expect(Card.new("J").value).to eql(10)
  end

  it "values queen as 11" do
    Card.new("Q").value.should eq(11)
  end
end
