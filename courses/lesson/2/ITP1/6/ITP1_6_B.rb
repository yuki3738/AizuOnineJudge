PATTERNS = %w[S H C D].freeze
n = gets.to_i
cards = []

n.times do
  cards << gets.chomp
end

PATTERNS.each do |pattern|
  1.upto(13) do |i|
    card = "#{pattern} #{i}"
    puts card unless cards.include?(card)
  end
end
