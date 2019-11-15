def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs

i = 0
while i < collection.length do
  if collection[i][:item].include?(name)
    return collection[i]
  end
  i += 1
end

end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.

#rspec spec/grocer_spec.rb:49

  # * Arguments:
  #   * `Array`: a collection of item Hashes
  # * Returns:
  #   * a ***new*** `Array` where every ***unique*** item in the original is present
  #     * Every item in this new `Array` should have a `:count` attribute
  #     * Every item's `:count` will be _at least_ one
  #     * Where multiple instances of a given item are seen, the instance in the
  #       new `Array` will have its `:count` increased
  myCart_i = 0
  cart_i = 0
  myCart = []
  #while cart_i < cart.length do
while cart_i < cart.length do
cart[cart_i][:count] = 1

#myCart[myCart_i][:count] = 1
      if myCart.any? {|h| h[:item] == cart[cart_i][:item]}
          myCart.each do |item|
          item[:count] = cart[cart_i][:count]
          item[:count] += 1
          end
       else
         myCart.push(cart[cart_i])


       end
       myCart_i += 1
       cart_i += 1
       end
       p myCart

end

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  # * Arguments:
  #   * `Array`: a collection of item `Hash`es
  #   * `Array`: a collection of coupon `Hash`es
  # * Returns:
  #   * A ***new*** `Array`. Its members will be a mix of the item `Hash`es and,
  #     where applicable, the "ITEM W/COUPON" `Hash`. Rules for application are
  #     described below.

  #rspec spec/grocer_spec.rb:77

  #If there are 2 avocados it will be 2.50 each, and the item name will change also.
  #it might need to compare the new hash with the coupons one.
i_coupons = 0
while i_coupons < coupons.length
  cart_item = find_item_by_name_in_collection(coupons[i_coupons][:item], cart)
  coupon_item_name = "#{coupons[i_coupons][:item]}  W/COUPON"
  cart_item_wcoupon = find_item_by_name_in_collection(coupon_item_name, cart)
    if cart_item && cart_item[:count] >= coupons[i_coupons][:num]
      if cart_item_wcoupon
        cart_item_wcoupon += coupons[i_coupons][:num]
        cart_item -= coupons[i_coupons][:num]
      else
        cart_item_wcoupon = {
          :item => cart_item,
          :price => coupons[i_coupons][:cost] / coupons[i_coupons][:num],
          :count => coupons[i_coupons][:num],
          :clearance => coupons[i_coupons][:clearance]
        }
        cart << cart_item_wcoupon
        cart_item[:count] -= coupons[i_coupons][:num]
      end
    end

  i_coupons += 1
end



#######Not finished!!!! I have no idea of what to do
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #rspec spec/grocer_spec.rb:196
  # REMEMBER: This method **should** update cart
  cart_i = 0
while cart_i < cart.length do
    if cart.any? {|arr| arr[:clearance] == true }
      cart[cart_i][:price] = cart[cart_i][:price] - (cart[cart_i][:price] * 0.2)
      cart[cart_i][:price].round(2)
    end
    cart_i += 1
    p cart
  end
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
