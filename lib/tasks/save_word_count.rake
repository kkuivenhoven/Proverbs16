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

end
