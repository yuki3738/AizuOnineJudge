loop do
  n, x = gets.split.map(&:to_i)
  break if (n + x) == 0
  answer = 0
  (1..n).each do |i|
    ((i + 1)..n).each do |j|
      ((j + 1)..n).each do |k|
        if i != j && j != k && (i + j + k) == x
          answer += 1
        end
      end
    end
  end
  puts answer
end
