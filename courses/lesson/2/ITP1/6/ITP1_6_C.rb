buildings = Array.new(4).map { Array.new(3).map { Array.new(10, 0) } }

n = gets.to_i
n.times do
  info = gets.split.map(&:to_i)
  b, f, r, v = info.map {|i| i - 1}
  v += 1
  buildings[b][f][r] += v
end

buildings.each_with_index do |building, i|
  building.each do |floor|
    puts " #{floor.join(' ')}"
  end
  puts ?# * 20 if i < 3
end
