require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('http://www.wikipedia.org'))
#doc = Nokogiri::HTML(open('http://www.google.com'))
puts doc
