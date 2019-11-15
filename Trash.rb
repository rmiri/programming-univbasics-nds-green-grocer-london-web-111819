def hash_has_blank(hsh)
  collection.each do |k,v|
    if v.include?(name)
      return v
    end
  end
  return nil


 if collection.include?(name)
   #how to return the hash that has the name in it?
   return collection[name]
 else
   return nil
 end

 collection.each do |key,value|
   if value.include?(name)
     return collection
   end
 end
 return nil

 i = 0
 myCart = []
 myCart.push(cart)

 while i < myCart.length do

     if myCart[i].has_key?(:count)
       myCart[i][:count] += 1
     else
       myCart[i][:count] = 1
     end
     i += 1
 end

 while cart_i < cart.length do
   #my problem here is how to compare if a name exist in the array cart,
   #and if yes it will make a count of 2 (or more)
   myCart.push(cart[cart_i])
     if myCart[myCart_i].include? cart[cart_i] do
       if myCart[i].has_key?(:count)
         myCart[i][:count] += 1
       else
         myCart[i][:count] = 1
       end
       i += 1
 end

 while cart_i < cart.length do
   #my problem here is how to compare if a name exist in the array cart,
   #and if yes it will make a count of 2 (or more)
   myCart.push(cart)
     if myCart.include?(cart[cart_i])
       if myCart[myCart_i].has_key?(:count)
         myCart[myCart_i][:count] += 1
       end
     else
       myCart[myCart_i][:count] = 1
     end
             myCart_i += 1
     cart_i += 1
 end
 return  myCart


 myCart.push(cart[cart_i])
 myCart[myCart_i][:count] = 1
     unless myCart.include?(cart[cart_i])
         myCart[cart_i][:count] = 1
       else
         myCart[myCart_i][:count] += 1
     # else
     #   myCart[myCart_i][:count] = 1
     end

     myCart_i += 1
     cart_i += 1
 end
 myCart


 myCart_i = 0
 cart_i = 0
 myCart = []

 while cart_i < cart.length do
   #my problem here is how to compare if a name exist in the array cart,
   #and if yes it will make a count of 2 (or more)
   #add cart_i
 #  cart[cart_i][:count] = 1
 myCart.push(cart[cart_i])
 myCart[myCart_i][:count] = 1
     unless myCart.include?(cart[cart_i]) #unless works as if does not include
       myCart.push(cart[cart_i])
       myCart[myCart_i][:count] += 1
     # else
     #   myCart[myCart_i][:count] = 1
     end
     myCart_i += 1
     cart_i += 1
 end


 newCart_i = 0

 while newCart_i < newCart.length do
   newCart[newCart_i][:count] = 1
   unless find_item_by_name_in_collection(newCart[newCart_i],newCart).include?(newCart)
     newCart[newCart_i][:count] += 1
   end
     newCart_i += 1
 end



 def consolidate_cart(cart)

   myCart_i = 0
   cart_i = 0
   myCart = []

   while cart_i < cart.length do

   myCart.push(cart[cart_i])
       if myCart.include?(cart[cart_i])
         myCart[myCart_i][:count] += 1
       else
          myCart[myCart_i][:count] = 1
       end
       myCart_i += 1
       cart_i += 1
   end

 end

 cart[i_cart][:count] = cart[i_cart][:count] - coupons[i_coupons][:num]
coupons[i_coupons][:item] += " W/COUPON"
cart.push(coupons[i_coupons])


##########################################
cart_1=[
  {:item => "AVOCADO", :price => 3.00, :clearance => true, :count => 3},
  {:item => "KALE",    :price => 3.00, :clearance => false, :count => 1}
]
coupons_1 = [{:item => "AVOCADO", :num => 2, :cost => 5.00}]

def apply_coupons(cart, coupons)
n_of_itens = 0
i_cart = 0
while i_cart < cart.length do
i_coupons = 0
  if cart.any? {|h| h[:item] == coupons[i_coupons][:item] && h[:count] >= coupons[i_coupons][:num]}


    itemWDisc = Hash.new
    itemWDisc = coupons[i_coupons]
    itemWDisc[:item] += " W/COUPON"
    #itemWDisc[:count] = 0
    coupon_cost = coupons[i_coupons][:cost]
    coupon_num = coupons[i_coupons][:num]
    itemWDisc[:price] = coupon_cost/coupon_num

    cart << itemWDisc

    cart[i_cart][:count] -=  coupons[i_coupons][:num]

    p "it prints"
    print cart
  end
  i_cart += 1
  i_coupons += 1

end



end

apply_coupons(cart_1, coupons_1)


return false if cart.empty? ### did nothing
while i_cart < cart.length do

  i_coupons = 0
  if cart[i_cart][:item] == coupons[i_coupons][:item] && cart[i_cart][:count] >= coupons[i_coupons][:num]

    cart[i_cart][:count] = cart[i_cart][:count] - coupons[i_coupons][:num]

   itemWDisc = Hash.new
   itemWDisc.merge!(cart[i_cart])
   itemWDisc[:item] = itemWDisc[:item] + " W/COUPON"

   itemWDisc[:count] = coupons[i_coupons][:num]
   itemWDisc[:price] = coupons[i_coupons][:cost]/coupons[i_coupons][:num]

   cart.push(itemWDisc)
 end
 i_cart += 1
 i_coupons += 1
end
p cart



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
##########################

i = 0
while i < collection.length do
  if collection[i][:item].include?(name)
    return collection[i]
  end
  i += 1
end
