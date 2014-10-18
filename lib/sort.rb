class Sorting
  def insertion_sort(array)
    a = array
    i = 1
    while i != a.length
      move_left(a, i)
      i += 1
    end
    a
  end

  def move_left(a, i)
    x = a.slice!(i)
    y = i - 1
    y -= 1 while y >= 0 && a[y] > x
    a.insert(y + 1, x)
  end

  def merge_sort(list)
    arrayify(list)
    list = merge_pairs(list) while list.size  > 1
    list.first
  end

  def arrayify(list)
    list.map! { |e| [e] }
  end

  def merge_pairs(list)
    list.each_slice(2).map do |l, r|
      merge(l, r)
    end
  end

  def merge(l, r)
    return l unless r
    result = []
    result.push(l.first <= r.first ? l.shift : r.shift) while l.first && r.first
    result + l + r
  end

  def quicksort(array)
    return array if array.length <= 1

    pivot_index = (array.length / 2)
    pivot_value = array[pivot_index]
    array.delete_at(pivot_index)

    lesser = []
    greater = []

    array.each do |x|
      if x <= pivot_value
        lesser << x
      else
        greater << x
      end
    end

    quicksort(lesser) + [pivot_value] + quicksort(greater)
  end
end

s = Sorting.new
puts s.insertion_sort([6, 3, 25, 7])
puts s.merge_sort([6, 3, 25, 7])
puts s.quicksort([6, 3, 25, 7])
