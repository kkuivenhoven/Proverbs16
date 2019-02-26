class CommonWord < ApplicationRecord

	serialize :word_num, Hash
	serialize :verse_num_sw, Hash

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

	def self.getBookCount
		@key_values = Hash.new 
		@key_values.update(@key_values) { |key, value| value * 0 } 
		@chapters = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 27]

		@chapters.each do |c| 
			@chapter = CommonWord.where("chapter_num = '#{c.to_s}'").all.pluck(:verse_num_sw) 
			@newHash = CommonWord.getCommonCount(@chapter) 
			@chapter.each do |ch| 
				ch.each do |key, value| 
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
