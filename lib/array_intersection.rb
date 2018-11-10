# Creates a new array to return the intersection of the two input arrays
def intersection(array1, array2)
  array = []

  return array if array1.nil? || array2.nil?

  if array1.length > array2.length
    larger = array1
    smaller = array2
  else
    larger = array2
    smaller = array1
  end

  hash = Hash.new()
  smaller.each do |sm_num|
    hash[sm_num] = 1
  end

  larger.each do |lg_num|
    if hash.include? lg_num
      array << lg_num
    end
  end

  return array
end

# Time complexity: O(n + m)
# Space complexity: O(n)
