def stock_picker(arr)
  buying_day = []
  selling_day = []
  best_days = []
  for i in arr 
    if i < i + 1
      buying_day.push(i)
    elsif i > i + 1
      selling_day.push(i)
    else
      best_days.push(i)
    end
  end
end

puts stock_picker([17,3,6,9,15,8,6,1,10])
