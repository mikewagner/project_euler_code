#!/usr/bin/env ruby

results = {}
results.default = []


def solutions(p)
  results = []
  (1..p).each do |a|
    (1..p).each do |b|
      c = p - (a + b)
      results << [a, b, c].sort if (c * c == a * a + b * b)
    end
  end
  results.uniq
end


results = {}
(1..1000).each do |p|
  results[p] = solutions(p)
end

p results.values.max { |a,b| a.count <=> b.count }


