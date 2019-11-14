def consolidate_cart(cart)
grocery_cart = {}
  new_cart = {}
  cart.each do |_array|
    items_array.each do |item, price_hash|
      new_cart[item] ||= price_hash
      if new_cart[item][:count]
        new_cart[item][:count] += 1
      else new_cart[item][:count] = 1
      end
    end
  end
  new_cart
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
