def get_spins(reels, spins)
  return reels[0][spins[0]], reels[1][spins[1]],reels[2][spins[2]]
end

def has_same_tree(reels, spins)
  arr = get_spins(reels, spins)
  arr.uniq.length === 1
end

def has_same_two(reels, spins)
  arr = get_spins(reels, spins)
  arr.uniq.length === 2
end

def get_score(key, multiplier = 1)
  base_score = ["Wild","Star","Bell","Shell","Seven","Cherry","Bar","King","Queen","Jack"]
  index = base_score.find_index { |x| x == key}
  (10 - index) * multiplier
end

def fruit(reels, spins)
  case
  when has_same_tree(reels, spins)
    get_score(reels[0][spins[0]], 10)
  when has_same_two(reels, spins)
    arr = get_spins(reels, spins)
    counts = arr.reduce(Hash.new(0)) {|h,x| h[x]+=1;h}
    key = counts.keys.find { |x| counts[x] === 2 }
    multiplier = arr.include?("Wild") && key != "Wild" ? 2 : 1
    get_score(key, multiplier)
  else
    0
  end
end
