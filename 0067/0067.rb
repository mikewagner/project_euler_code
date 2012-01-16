#!/usr/bin/env ruby


lines = IO.readlines( 'triangle.txt' ).to_a
lines.map! { |l| l.gsub!(/\n/,'') }
lines.map! { |l| l.split(' ').map(&:to_i) }

(lines.size-1).downto(0) do |x|
  0.upto(x-1) do |y|
    lines[x-1][y] += [lines[x][y], lines[x][y+1]].max
  end
end


p lines[0][0]


