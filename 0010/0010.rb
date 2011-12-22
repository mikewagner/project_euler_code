#!/usr/bin/env ruby
require 'prime'

puts Prime.each(2000000).inject(0) { |t,p| t += p }

