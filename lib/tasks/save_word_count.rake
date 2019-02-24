namespace :save_word_count do

  desc "TODO"
  task save_words: :environment do
		@chaps = Proverb.distinct.pluck(:chapter)
		@chaps.each do |m| 
			Proverb.where(:chapter => m).each do |u|
				a = u.verse_text.split
				h = a.group_by {|w| w}
				b = h.map {|k,v| [k, v.size]}
				c = b.sort_by(&:last)
				d = c.reverse
				d = d.to_h

				com = CommonWord.new
				com.chapter_num = u.chapter
				com.verse_num = u.verse_num
				com.word_num = d
				com.save
			end	
		end
	end

	desc "TODO"
	task stop_words: :environment do
		stop_words = File.read(Rails.root.join('stopwords.csv'))
		csv = CSV.parse(stop_words, :headers => true, :encoding => 'ISO-8859-1')
		csv.each do |r|
			stopWord = StopWord.new
			stopWord.word = r['stopwords']
			stopWord.save
		end
	end

	desc "TODO"
	task verse_num_sw: :environment do
		@stopWords = StopWord.all.pluck(:word)
		@common = CommonWord.all
		@proverbs = Proverb.all
		@common.each do |co|
			@proverbs.each do |prov| 
				if co.chapter_num == prov.chapter 
					if co.verse_num == prov.verse_num
							prov_wo = prov.verse_text.downcase.split.delete_if{|x| @stopWords.include?(x)}.join(' ')
							a = prov_wo.split
							h = a.group_by {|w| w}
							b = h.map {|k,v| [k, v.size]}
							c = b.sort_by(&:last)
							d = c.reverse
							d = d.to_h
						
							co.verse_num_sw = d
							co.save
					end
				end
			end
		end
	end

end
