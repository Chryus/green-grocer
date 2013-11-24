require './green-grocer.rb'

cart = [{"AVOCADO" => {:price => 3.00, :clearance => true}}, {"AVOCADO" => {:price => 3.00, :clearance => true}}]

describe "#count_cart" do
  it "should take an array and return a hash that counts the number of each item in the hash" do
    expect(count_cart(cart)).to eq({"AVOCADO" => {:price => 3.00, :clearance => true, :count => 2}})
  end
end