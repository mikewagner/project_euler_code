#!/usr/bin/env ruby


s = 0

loop do
  s += 1
  r = (1..20).inject(0) { |t, i| t += s % i }
  if r == 0
    puts s
    break
  end
end




