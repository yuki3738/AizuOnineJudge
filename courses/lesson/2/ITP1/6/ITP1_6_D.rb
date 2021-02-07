n, m = gets.split.map(&:to_i)

a = []
n.times do |i|
  a << gets.split.map(&:to_i)
end

b = []
m.times do
  b << gets.to_i
end

a.each do |a|
  puts a.zip(b).map { |x, y| x * y }.sum
end
