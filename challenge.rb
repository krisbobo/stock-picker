def stock_picker(arr)
  buying_day = []
  selling_day = []
  best_days = []
arr.forEach do |i|
    if i < i + 1
      buying_day.push(i)
    elsif i > i + 1
      selling_day.push(i)
    else
      best_days.push(i)
    end
  end
end