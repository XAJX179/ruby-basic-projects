def stock_price(price_array)
  profit = 0
  result = []
  price_array.each_with_index do |outer,out_index|
    price_array[out_index..].each_with_index do |inner,in_index|
      if (inner - outer) > profit
        profit = inner - outer
        result = [out_index,in_index+out_index]
      end
    end
  end
  puts "index for best day buy,sell :"<< result.join(',')
  puts "for a profit of "+ "#{profit}"
end

prices = [17,3,6,9,15,8,6,1,10]

stock_price(prices)