#!/usr/bin/env ruby

`find . -maxdepth 2 -name '.git' | xargs -0`.split.each do |p|
  puts "git pull " + p
  `cd #{p}/.. &&  git pull`
end

