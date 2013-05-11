require 'prime'

def prime_division_sum(number)
  number.prime_division.inject(0) do |i, n|
    n.last.times { i += n.first }
    i
  end
end

range = ARGV[0].to_i..ARGV[1].to_i
ns = []
es = []
range.each do |i|
  ns << "#{i}".rjust(4)
  es << "#{prime_division_sum(i)}".rjust(4)
end

puts "|#{ns.join('|')}|"
puts "|#{es.join('|')}|"
