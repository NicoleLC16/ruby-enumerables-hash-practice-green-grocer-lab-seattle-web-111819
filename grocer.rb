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
    if cart.keys.include? coupon[:item]
      if cart[coupon[:item]][:count] >= coupon[:num]
        with_coupon = "#{coupon[:item]} W/COUPON"
        if cart[with_coupon]
          cart[with_coupon][:count] += coupon[:num]
        else cart[with_coupon] = {
          price: coupon[:cost]/ coupon[:num],
          clearance: cart[coupon[:item]][:clearance],
          count: coupon[:num]
        }
      end
      cart[coupon[:item]][:count] -= coupon[:num]
    end
  end
end
cart
end

def apply_clearance(cart)
  cart.each do |item, 
end

def checkout(cart, coupons)
  # code here
end
