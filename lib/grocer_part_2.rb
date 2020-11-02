require 'pry'
require_relative './part_1_solution.rb'

=begin

cart = 	[
	{"AVOCADO" => {:price => 3.00, :clearance => true}},
	{"KALE" => {:price => 3.00, :clearance => false}},
	{"AVOCADO" => {:price => 3.00, :clearance => true}},
	{"AVOCADO" => {:price => 3.00, :clearance => true}},
	{"BEETS" => {:price => 2.50, :clearance => false}}
]
	
coupons = [
	{:item => "AVOCADO", :num => 2, :cost => 5.00},
	{:item => "BEER", :num => 2, :cost => 20.00},
	{:item => "CHEESE", :num => 3, :cost => 15.00}
]

=end


def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  
index = 0
cart_with_coupons = consolidate_cart(cart)

  while index < coupons.count do
      coupon = coupons[index]
      item_with_coupon = find_item_by_name_in_collection(coupon[:item], cart_with_coupons)
      if item_with_coupon != nil && item_with_coupon[:count] >= coupon[:num]
        coupon_count = (item_with_coupon[:count] / coupon[:num]).round_down
        item_with_coupon[:count] = coupon_count
        binding.pry
        
        cart_with_coupons << item_with_coupon
      end  
    index += 1
  end
  cart_with_coupons 
 
end



def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
