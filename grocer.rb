def consolidate_cart(cart)
grocery_cart = {}
cart.each do |grocery_item| 
  grocery_item.each do |item, item_hash|
  grocery_cart[item][item_hash]
  end
  end
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
