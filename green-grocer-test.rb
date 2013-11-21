require './green-grocer.rb'

describe "#cart_to_hash" do
  
  it "should take an array and return a hash that counts the number of each item in the hash" do
    expect(cart_to_hash([{"AVOCADO" => {:price => 3.00, :clearance => true}}, {"AVOCADO" => {:price => 3.00, :clearance => true}}]).to eq({"AVOCADO" => {:price => 3.00, :clearance => true}, :count => 2}))
  end
end