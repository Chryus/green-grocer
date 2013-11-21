require 'awesome_print'
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

# #array, hash, hash
ITEMS = [{"AVOCADO" => {:price => 3.00, :clearance => true}},
          {"KALE" => {:price => 3.00,:clearance => false}},
          {"BLACK_BEANS" => {:price => 2.50,:clearance => false}},
          {"ALMONDS" => {:price => 9.00, :clearance => false}},
          {"TEMPEH" => {:price => 3.00,:clearance => true}},
          {"CHEESE" => {:price => 6.50,:clearance => false}},
          {"BEER" => {:price => 13.00, :clearance => false}},
          {"PEANUTBUTTER" => {:price => 3.00,:clearance => true}},
          {"BEETS" => {:price => 2.50,:clearance => false}}]

COUPS = [  {:item=>"AVOCADO", :num=>2, :cost=>5.00},
          {:item=>"BEER", :num=>2, :cost=>20.00},
          {:item=>"CHEESE", :num=>3, :cost=>15.00}]
#randomly generates items in cart
def generateCart
  cart = []
  rand(20).times do
    cart.push(ITEMS.sample)  
  end
  cart
end

# #randomly generates set of coupons
# def generateCoups
#   coups = []
#   rand(2).times do
#     coups.push(COUPS.sample)
#   end
# coups
# end

# #Implement a method checkout to calculate total cost of a cart of items and 
# #apply discounts and coupons as necessary.
# ##the cart is currently an array of individual items, translate it into a hash that includes the counts for each item
# For example if your cart was [  {"AVOCADO" => {:price => 3.00, :clearance => true}}, {"AVOCADO" => {:price => 3.00, :clearance => true}}]
# it would become {"AVOCADO" => {:price => 3.00, :clearance => true}, :count => 2}

# cart = [
#     [0] {
#         "AVOCADO" => {
#                 :price => 3.0,
#             :clearance => true
#         }
#     },
#     [1] {
#         "AVOCADO" => {
#                 :price => 3.0,
#             :clearance => true
#         }
#     }
# ]

def cart_to_hash
  #cart_array = generateCart
  cart_hash = {}
  generateCart.each do |hash|
    #=> {"AVOCADO" => {:price => 3.0,:clearance => true}}
    hash.each do |food, attribute_hash|
      #"AVOCADO" => {:price => 3.0, :clearance => true}
      if cart_hash[food].nil?
        cart_hash[food] = {}
      end
      if cart_hash[:count].nil?
        cart_hash[:count] = 0
      end
      cart_hash[:count] += 1
      ap food
        attribute_hash.each do |price, clearance|
        ap price
        ap clearance
        end
    end
  end
  ap cart_hash   
end

cart_to_hash

# cart = {
#     "AVOCADO" => {
#             :price => 3.0,
#         :clearance => true
#     },
#        :count => 2
# }






##create a checkout method that calculates the total cost of the cart
##when checking out, check the coupons and apply the discount if the proper number of items is present
##if any of the items are on clearance add a 20% discount
##if the customer has 2 of the same coupon, triple the discount
##if none of the items purchased have a unit price greater than 5$ give the customer a 10$ discount off the whole cart

# ```
# ##Reward
# https://www.youtube.com/watch?v=-RuSCACXmXs