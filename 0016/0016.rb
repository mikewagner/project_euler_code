#!/usr/bin/env ruby


puts (2**1000).to_s.split('').inject(0) { |r,i| r += i.to_i }

