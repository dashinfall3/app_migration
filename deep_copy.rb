one = [1, [2]]
two = [1, [2, [3]]]
three = [1, [2, [3, 4, [5]]], [12]]

def deepcopy(array)
  infinite = []
  infinite << infinite
  return infinite if array == infinite
  new_array = []
  array.each do |item|
    if item.is_a? Array
      new_array << deepcopy(item)
    else
      new_array << item
    end
  end

  new_array
end

copy = deepcopy(one)
puts copy[1].object_id
puts one[1].object_id

copy1 = deepcopy(two)
puts copy1[1].object_id
puts two[1].object_id

copy2 = []
copy2 << copy2
p copy2
p copy2[0][0][0][0][0]
new_thing = deepcopy(copy2)
