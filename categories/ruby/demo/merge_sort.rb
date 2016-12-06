def merge_sort(arr)
  # 0. Base case
  return arr if arr.length <= 1

  # 1. Divide
  mid = arr.length / 2
  arr0 = merge_sort(arr[0, mid])
  arr1 = merge_sort(arr[mid, arr.length])

  p arr0, arr1
  p '-' * 20

  # 2. Conquer
  output = merge(arr0, arr1)
end

def merge(l, r)
  output = []
  until l.empty? || r.empty?
    p 'l.empty? || r.empty?'
    output << if l.first <= r.first
                l.shift
              else
                r.shift
              end
  end
  p output
  # The order of `concat(l)` or `concat(r)` does not matters
  output.concat(l).concat(r)
  p l
  p r
  p output
  p '=' * 20
  output
end

a = [6,23,53,1,2,5,62,61,33,21,14,6,23].shuffle
p merge_sort(a) # p x <=> puts x.inspect
