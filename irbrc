begin
  require 'rubygems'
  require 'rb-readline'
  require 'pry'
rescue LoadError
end

if defined?(Pry)
  Pry.start
  exit
end
