#!/usr/bin/env ruby

Signal.trap("TERM") do
  puts "exit"
  exit 0
end

while true
end
