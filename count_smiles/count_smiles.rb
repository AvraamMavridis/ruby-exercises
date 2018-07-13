def is_valid_part(str, valids)
  valids.include?(str)
end

def is_valid_mount(str)
  is_valid_part(str, [")", "D"])
end

def is_valid_nose(str)
  is_valid_part(str, ["-", "~"])
end

def is_valid_eyes(str)
  is_valid_part(str, [":", ";"])
end

def is_valid(smile)
  return case
  when smile.size === 3
    is_valid_eyes(smile[0]) && is_valid_nose(smile[1]) && is_valid_mount(smile[2])
  when smile.size === 2
    is_valid_eyes(smile[0]) && is_valid_mount(smile[1])
  end
end

def count_smileys(arr)
  arr.count { |smi| is_valid(smi)}
end
