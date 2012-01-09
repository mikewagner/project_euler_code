#!/usr/bin/env ruby


puts [0, 1, 2, 3, 4, 5, 6, 7, 8, 9].permutation.each_with_index.find { |_, i| i == 999_999 }.first.join


