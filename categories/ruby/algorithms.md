# Algorithms

## 插入排序

```ruby
def insert_sort(arr)
  (1...arr.length).each do |i|
    tmp = arr[i]
    0...i).each { |j| arr[j], arr[i] = arr[i], arr[j] if arr[j] >= temp }
  end
end
```

## 快速排序

```ruby
def quick_sort(arr)
  return arr if arr.length <= 1
  standard = arr.sample
  smaller = bigger = []
  (arr - [standard]).each {|e| e < standard ? smaller << e : bigger << e}
  quick_sort(smaller) + standard + quick_sort(bigger)
end
```

## 归并排序 TODO

```ruby
def split_array arr
  mid = (arr.size / 2).round
  [arr.take(mid), arr.drop(mid)]
end

def merge_sort(arr)
  return arr if arr.length <= 1
  l, r = split_array(arr)
end
```

## 冒泡排序

```ruby
def bubble_sort(arr)
  arr.each_index do |i|
    (arr.length - i - 1).times do |j|
      arr[j], arr[j+1] = arr[j+1], arr[j] if arr[j] > arr[j+1]
    end
  end
end
```

## 希尔排序 TODO

## 堆排序 完全二叉树 TODO

## 二分查找(折半查找) 前提是有序数组

```ruby
def binary_search(arr, key)
  left, right = 0, arr.length
  while left <= right
    mid = (left + right) >> 1
    if arr[mid] == key
      return mid
    elsif arr[mid] > key
      right = mid - 1
    else
      left = mid + 1
    end
  end
end
```

tire, heap

## References

* [data-structures-ruby PPT](http://aarti.github.io/data-structures-ruby)
* [ruby algorithms conlection](https://github.com/kanwei/algorithms)
* [A collection of data structures in Ruby for my data structures challenge](https://github.com/Blahah/datastructures)
