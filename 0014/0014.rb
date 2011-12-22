#!/usr/bin/env ruby


def sequence(n)
  s = [n]
  until n == 1
    if n.even?
      n = (n / 2)
    else
      n = ((3 * n) + 1) if n.odd?
    end
    s << n
  end
  s
end


puts (1..1_000_000).max_by { |i| sequence(i).count }

