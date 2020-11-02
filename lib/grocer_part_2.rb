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

# REMEMBER: This method **should** update cart

def apply_coupons(cart, coupons)

index = 0
  coupons.each do |coupon|
    item_with_coupon = find_item_by_name_in_collection(coupon[:item], cart)
    coupon_applied = item_with_coupon != nill && item_with_coupon[:count] >= coupon[:num]
    if item_is_in_basket and count_is_big_enough_to_apply
      cart << { item: "#{item_with_coupon[:item]} W/COUPON", 
                price: coupon[:cost] / coupon[:num], 
                clearance: item_with_coupon[:clearance],
                count: coupon[:num]
              }
      item_with_coupon[:count] -= coupon[:num]
    end
    i += 1
  end
  cart
 
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
