#!/usr/bin/env ruby

puts (1..1000000).to_a.delete_if { |i| i.to_s != i.to_s.reverse }.delete_if { |i| i.to_s(2) != i.to_s(2).reverse || i.to_s(2) =~ /^0/ }.inject(0, &:+)


