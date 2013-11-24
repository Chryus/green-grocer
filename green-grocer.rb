require 'awesome_print'

# if your cart was [  {"AVOCADO" => {:price => 3.00, :clearance => true}}, {"AVOCADO" => {:price => 3.00, :clearance => true}}]
# it would become {"AVOCADO" => {:price => 3.00, :clearance => true}, :count => 2}
 
# all were doing here is counting the items in the cart, and creating
# a hash with the names of the items and their counts
ITEMS = [  {"AVOCADO" => {:price => 3.00, :clearance_items => true}},
    {"AVOCADO" => {:price => 3.00, :clearance_items => true}},
    {"KALE" => {:price => 3.00,:clearance_items => false}},
    {"KALE" => {:price => 3.00,:clearance_items => false}},
    {"BLACK_BEANS" => {:price => 2.50,:clearance_items => false}},
    {"ALMONDS" => {:price => 9.00, :clearance_items => false}},
    {"TEMPEH" => {:price => 3.00,:clearance_items => true}},
    {"CHEESE" => {:price => 6.50,:clearance_items => false}},
    {"BEER" => {:price => 13.00, :clearance_items => false}},
    {"PEANUTBUTTER" => {:price => 3.00,:clearance_items => true}},
    {"BEETS" => {:price => 2.50,:clearance_items => false}}]

#put all the
 
COUPS = [  {:item=>"AVOCADO", :num=>2, :cost=>5.00},
    {:item=>"BEER", :num=>2, :cost=>20.00},
    {:item=>"CHEESE", :num=>3, :cost=>15.00}]
#for each food, create a hash with a counter key

#borrowed some of the nil? logic from Kate, but this is mostly mine:) proud.
def count_cart(cart)
  cart2 = {}
  #outer loop, then do each thing in the innner loop, than outer loop....
  cart.each do |item|
    # <{"AVOCADO" => {:price => 3.00, :clearance_items => true}}>
    item.each do |food, info|
      #if cart 2 does not have food then merge it with info and give it a count key value of 1
      if cart2[food].nil?
        cart2[food] = info
        cart2[food].merge!(:count => 1)
      #if cart2food exists, add one to the count key
      else
        cart2[food][:count] += 1
       end
    end
  end
  cart2
end
#{"AVOCADO" => {:price => 3.00, :clearance => true}, :count => 2}

count_cart(ITEMS)


##create a checkout method that calculates the total cost of the cart
##when checking out, check the coupons and apply the discount if the proper number of items is present
##if any of the items are on clearance add a 20% discount
##if the customer has 2 of the same coupon, triple the discount
##if none of the items purchased have a unit price greater than 5$ give the customer a 10$ discount off the whole cart
# ##Objectives: 
# #Create a checkout method to calculate the total cost of a cart of items and apply discounts and coupons as necessary.

# #Dr. Steve Bruhle, your green grocer, isn't ready, but you are!

# ##Skills: 
# #any?, all?, none?, nil?, each, map/collect

# ##Instructions:
# Code generates a random cart of items and a random set of coupons. 
# Implement a method checkout to calculate total cost of a cart of items and 
# apply discounts and coupons as necessary.

# ##Code:
# ```
# ##Reward
# https://www.youtube.com/watch?v=-RuSCACXmXs