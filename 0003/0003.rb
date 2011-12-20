#!/usr/bin/env ruby

require 'prime'

t = 600_851_475_143

Prime.each(Math.sqrt(t)) do |p|
  puts p if t % p == 0
end


