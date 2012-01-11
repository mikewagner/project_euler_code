#!/usr/bin/env ruby


p (1..1000).to_a.inject { |r,i| r += (i ** i) }.to_s[-10,10]
