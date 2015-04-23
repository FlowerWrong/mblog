def bubble_sort_asc(arr)
  1.upto(arr.length - 1) do |i|
    (arr.length - i).times do |j|
      if arr[j] > arr[j + 1]
        arr[j], arr[j + 1] = arr[j + 1], arr[j]
      end
    end
  end
  arr
end

def bubble_sort_desc(arr)
  1.upto(arr.length - 1) do |i|
    (arr.length - i).times do |j|
      if arr[j] > arr[j + 1]
        arr[j], arr[j + 1] = arr[j + 1], arr[j]
      end
    end
  end
  arr
end

p bubble_sort_asc([1, 3, 5, 2, 3, 7, 78, 9])
