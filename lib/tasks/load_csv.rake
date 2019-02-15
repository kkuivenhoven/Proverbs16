require 'csv'
namespace :load_csv do

  desc "TODO"
  task :import_csv => :environment do
		csv_text = File.read(Rails.root.join('proverbs16.csv'))
		csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
		csv.each do |row|
			prov = Proverb.new
			prov.chapter = row['chapter']
			prov.verse_num = row['verse_num']
			prov.verse_text = row['verse_text']
			prov.save
		end
  end

  desc "TODO"
  task :import_csv_19 => :environment do
		csv_text = File.read(Rails.root.join('proverbs19.csv'))
		csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
		csv.each do |row|
			prov = Proverb.new
			prov.chapter = row['chapter']
			prov.verse_num = row['verse_num']
			prov.verse_text = row['verse_text']
			prov.save
		end
  end

  desc "TODO"
  task :import_csv_21 => :environment do
		csv_text = File.read(Rails.root.join('proverbs21.csv'))
		csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
		csv.each do |row|
			prov = Proverb.new
			prov.chapter = row['chapter']
			prov.verse_num = row['verse_num']
			prov.verse_text = row['verse_text']
			prov.save
		end
  end

  desc "TODO"
  task :import_csv_7 => :environment do
		csv_text = File.read(Rails.root.join('proverbs7.csv'))
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
