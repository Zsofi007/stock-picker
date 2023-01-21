def stock_picker(arr)
    first = 0
    last = 1
    bought = false
    index = 0
    res = [first,last]
    profit = 0
    for prices in arr
        
        if prices < arr[first]
            first = index
            bought = true
        end
        if prices > arr[last] && bought
            last = index
        end
        if first < last && arr[last] - arr[first] > profit
            profit = arr[last] - arr[first] 
            res = [first, last]
        end
        index += 1
    end
    res
end

pp stock_picker([17,3,6,9,15,8,6,1,10])
