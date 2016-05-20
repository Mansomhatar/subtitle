#! /usr/bin/ruby
#! -*- coding: utf-8 -*-

class Array

  def countUnic
    k = Hash.new(0)
    self.each {|x| k[x]+=1}
    k
  end

end

fileName_in = 'blo_01.srt'
fileName_out = 'blo_01.ord'
file_in = File.new(fileName_in, 'r')
file_out = File.new(fileName_out, 'a+')

num_regEx = Regexp.new('\b[0-9]+\b')

ord = Array.new

#rr = ' ' =~ num_regEx
#puts rrr

file_in.each do |line|
  # puts ("#{line[0] =~ num_regEx}, '==>', #{line}")
  if (line[0] =~ num_regEx).nil? then
    #file_out.puts(line)
    ord << line.scan(/[[:word:]]+/)
  end

end

ord.sort!

ord.each do |o|
#  puts o
end

items = ord.countUnic()
items.each do |key, val| puts key, val end


file_out.close
file_in.close

