def calc(str)
  ('a'..'z').to_a.map { |char| str.include?(char) ? 1 : 0 }.join
end
