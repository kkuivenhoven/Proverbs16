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

end
