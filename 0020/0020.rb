#!/usr/bin/env ruby

puts (1..100).each.inject(1, &:*).to_s.split('').map(&:to_i).inject(0, &:+)

