#\ -w -p 5000
$:.unshift File.dirname(__FILE__)
require 'app'
run App.new