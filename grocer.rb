def consolidate_cart(cart)
grocery_cart = {}
cart.each{|grocery_item| grocery_item.each 
{|item, item_hash| grocery_cart[item]  item_hash
if grocery_cart[item][:count]
  grocery_cart[item][:count] +=1
else
  grocery_cart[item][:count]=1
}}
grocery_cart
end

def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
