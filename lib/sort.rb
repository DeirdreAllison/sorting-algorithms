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
end

s = Sorting.new
puts s.insertion_sort([6, 3, 25, 7])
