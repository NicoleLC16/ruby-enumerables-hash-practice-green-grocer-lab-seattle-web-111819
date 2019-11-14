def consolidate_cart(cart)
shopping_cart = {}
  cart.each do |grocery_array|
    grocery_array.each do |item, item_hash|
      shopping_cart[item]||=item_hash
      if shopping_cart[item][:count]
        shopping_cart[item][:count] += 1
      else shopping_cart[item][:count] = 1
      end
    end
  end
  shopping_cart
end

def apply_coupons(cart, coupons)
  cart.each do |coupon|
    item = coupon[:item]
    if cart[item] && coupon[:item][:count] >= coupon[:num] && [("#{item} W/COUPON")]
      cart[("#{item} W/COUPON")]
  end 
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
