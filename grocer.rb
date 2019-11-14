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
  coupons.each do |coupon|
    item = coupon[:item]
    if cart[item] && cart[item][:count] >= coupon[:num] && !cart["#{item} W/COUPON"]
      cart["#{item} W/COUPON"] = {price: coupon[:cost] / coupon[:num], clearance:[:item][:clearance], count: coupon[:num]}
      cart[item][:count] -= count[:num]
    elsif cart[item][:count] >= coupon[:num] && !cart["#{item} W/COUPON"]
      cart["#{item} W/COUPON"][:count] += coupon[:num]
      cart[item][:count] -= count[:num]
    end
  end 
  cart
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
