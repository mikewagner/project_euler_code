#!/usr/bin/env ruby

require 'prime'


c = 0
Prime.each do |p|
  c += 1
  if c >= 10001
    puts p
    break
  end
end


