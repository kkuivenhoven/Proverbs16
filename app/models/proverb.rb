class Proverb < ApplicationRecord

	# This method is passed a chapters worth of verses which then
	# is pushed onto an empty array. Then all array entries are 
	# joined together on space result is returned to the call.
	def self.joinVerses(chapVerses)
		preJoinedVerses = Array.new
		chapVerses.each do |verse|
			preJoinedVerses.push(verse)
		end
		joinedVerses = preJoinedVerses.join(" ")
		return joinedVerses
	end	

end
