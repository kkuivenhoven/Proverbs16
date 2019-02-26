require 'csv'
namespace :load_csv do

  desc "TODO"
  task :load_all_csv => :environment do
	# chapters = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 27]
	chapters = [1, 2, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 27]
	chapters.each do |ch|
			file_path = 'proverbsVerses/proverbs' + ch.to_s + '.csv'
			# csv_text = File.read(Rails.root.join('proverbsVerses/proverbs16.csv'))
			csv_text = File.read(Rails.root.join(file_path))
			csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
			csv.each do |row|
				prov = Proverb.new
				prov.chapter = row['chapter']
				prov.verse_num = row['verse_num']
				prov.verse_text = row['verse_text']
				prov.save
			end
		end
	end

end
