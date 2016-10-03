def calc(num)
   puts Array.new(num) { |i| Array.new(num) { |j| sprintf('%x', (-i - 1) * (j + 1)).ljust(9) }.join }.join("\n")
end
