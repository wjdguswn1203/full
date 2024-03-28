#!/usr/bin/env ruby

require 'rbygem'
require 'mongo'

$client = Mongo::Client.new(['0.0.0.0:27017'], :database => 'ruby')
Mongo::Logger.logger.level = ::Logger::ERROR
$emp = $client[:emp]
puts 'Connected!!'

cursor = $emp.find({}, 'projection'=>{_id: 0})
cursor.each do | doc |
	puts doc
end
