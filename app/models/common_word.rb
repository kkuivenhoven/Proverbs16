class CommonWord < ApplicationRecord

	serialize :word_num, Hash
	serialize :verse_num_sw, Hash

	# This function calculates each word recurrences for all entries stored in 
	# the CommonWord table. This method is similar to self.getBookCount but instead
	# of word recurrence per chapter, this method returns total recurrence as 
	# one large hash which is returned to the calling place.
	def self.getWordRecurrenceTotal
    @versesWithSw = CommonWord.all.pluck(:verse_num_sw) 
    @totalRecur = Hash.new 
    @versesWithSw.each do |verseSw| 
      verseSw.each do |k, v|  
        if @totalRecur[k].nil? 
          @totalRecur[k] = v 
        else 
          @totalRecur[k] += v 
        end 
      end 
    end 

    @wordTotalRecur = Array.new 
    @occurenceCount = ""  
    @totalRecur.each do |k,v| 
			i = 0 
			loop do  
				if i == v 
					break 
				end 
				@occurenceCount << k 
				@occurenceCount << " " 
				i += 1 
			end 
		end 
    @wordTotalRecur << @occurenceCount 
		return @wordTotalRecur
	end

	def self.getCommonCount(common_sw)
    @newHash = Hash.new 
    common_sw.each do |vns| 
      count = 0 
      vns.each do |key, value| 
        @newHash[key] = 0 
        if @newHash.key?(key) 
          count += 1 
          @newHash[key] += count 
        end 
      end 
    end 
		return @newHash
	end

	# This function calculates each word recurrences for the entire book at hand.
	# Iterating over the chapters, the verses with the stop words are plucked from 
	# the CommonWord table and stored into a hash (@stopWordedVerses) which is 
	# then iterated over - values are added to key entry in @key_values (hash which
	# holds key value pairs for entire book at hand.
	# 
	# Note: this method differs from self.getWordRecurrenceTotal() because
	# self.getBookCount iterates through every chapter and the former does not.
	def self.getBookCount
		@key_values = Hash.new 
		@key_values.update(@key_values) { |key, value| value * 0 } 
		@chapters = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 27]

		@chapters.each do |c| 
			@stopWordedVerses = CommonWord.where("chapter_num = '#{c.to_s}'").all.pluck(:verse_num_sw) 
			@stopWordedVerses.each do |chSwVerse| 
				chSwVerse.each do |key, value| 
					if @key_values.key?(key) 
						@key_values[key] += 1 
					else 
						@key_values[key] = 0 
					end 
				end 
			end 
		end 
		return @key_values 
	end

end
