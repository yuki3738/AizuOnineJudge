r, c = gets.split.map(&:to_i)

array = []
r.times do
  line = gets.split.map(&:to_i)
  array << line
end

sums = array.map(&:sum)
c_sums = array.transpose.map(&:sum).push(sums.sum)

array.each_with_index do |row, i|
  row.push(sums[i])
end

array.push << c_sums
array.each { |row| puts row.join(' ') }
