FISHES = ['fish', 'fiiish', 'fiiiiish', 'fiiiish',
  'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

def sluggish_octopus(arr)
  arr.each_with_index do |el, idx|
    biggest = true

    arr.each_with_index do |el2, idx2|
      next if idx == idx2
      biggest = false if el2.length > el.length
    end

    return el if biggest == true
  end
end

def dominant_octopus(arr)
  return arr if arr.length < 2
  mid = arr.length / 2
  left = dominant_octopus(arr[0...mid])
  right = dominant_octopus(arr[mid..-1])
  merge(left, right)
end

def merge(left, right)
  result = []
  until left.empty? || right.empty?
    if left.first.length > right.first.length
      result.push(left.shift)
    else
      result.push(right.shift)
    end
  end
  result + left + right
end

def clever_octopus(arr)
  longest = arr.first
  idx = 1
  while idx < arr.length
    if arr[idx].length > longest.length
      longest = arr[idx]
    end
    idx += 1
  end
  longest
end
#
# p sluggish_octopus(FISHES)
#
# p dominant_octopus(FISHES).first
#
# p clever_octopus(FISHES)

tiles_array = ["up", "right-up", "right",
  "right-down", "down", "left-down", "left",  "left-up" ]

def slow_dance(dir, tiles_array)
  tiles_array.each_with_index do |el, idx|
    if el == dir
      return idx
    end
  end
end

def constant_dance(dir, tiles_array)
  hash = Hash.new
  tiles_array.each_with_index do |x, idx|
    hash[x] = idx
  end

  hash[dir]
end

p slow_dance("down", tiles_array)
p constant_dance("down", tiles_array)
