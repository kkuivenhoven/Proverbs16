require 'csv'
namespace :load_csv do

  desc "TODO"
  task :import_csv => :environment do
		csv_text = File.read(Rails.root.join('proverbsVerses/proverbs16.csv'))
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
		csv_text = File.read(Rails.root.join('proverbsVerses/proverbs19.csv'))
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
		csv_text = File.read(Rails.root.join('proverbsVerses/proverbs21.csv'))
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
		csv_text = File.read(Rails.root.join('proverbsVerses/proverbs7.csv'))
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
  task :import_csv_1 => :environment do
		csv_text = File.read(Rails.root.join('proverbsVerses/proverbs1.csv'))
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
  task :import_csv_4 => :environment do
		csv_text = File.read(Rails.root.join('proverbsVerses/proverbs4.csv'))
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
  task :import_csv_27 => :environment do
		csv_text = File.read(Rails.root.join('proverbsVerses/proverbs27.csv'))
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
  task :import_csv_20 => :environment do
		csv_text = File.read(Rails.root.join('proverbsVerses/proverbs20.csv'))
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
  task :import_csv_5 => :environment do
		csv_text = File.read(Rails.root.join('proverbsVerses/proverbs5.csv'))
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
  task :import_csv_18 => :environment do
		csv_text = File.read(Rails.root.join('proverbsVerses/proverbs18.csv'))
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
  task :import_csv_2 => :environment do
		csv_text = File.read(Rails.root.join('proverbsVerses/proverbs2.csv'))
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
  task :import_csv_3 => :environment do
		csv_text = File.read(Rails.root.join('proverbsVerses/proverbs3.csv'))
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
  task :import_csv_6 => :environment do
		csv_text = File.read(Rails.root.join('proverbsVerses/proverbs6.csv'))
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
  task :import_csv_8 => :environment do
		csv_text = File.read(Rails.root.join('proverbsVerses/proverbs8.csv'))
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
  task :import_csv_9 => :environment do
		csv_text = File.read(Rails.root.join('proverbsVerses/proverbs9.csv'))
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
  task :import_csv_10 => :environment do
		csv_text = File.read(Rails.root.join('proverbsVerses/proverbs10.csv'))
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
  task :import_csv_11 => :environment do
		csv_text = File.read(Rails.root.join('proverbsVerses/proverbs11.csv'))
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
  task :import_csv_12 => :environment do
		csv_text = File.read(Rails.root.join('proverbsVerses/proverbs12.csv'))
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
  task :import_csv_13 => :environment do
		csv_text = File.read(Rails.root.join('proverbsVerses/proverbs13.csv'))
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
  task :import_csv_14 => :environment do
		csv_text = File.read(Rails.root.join('proverbsVerses/proverbs14.csv'))
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
  task :import_csv_15 => :environment do
		csv_text = File.read(Rails.root.join('proverbsVerses/proverbs15.csv'))
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
  task :import_csv_17 => :environment do
		csv_text = File.read(Rails.root.join('proverbsVerses/proverbs17.csv'))
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
  task :import_csv_22 => :environment do
		csv_text = File.read(Rails.root.join('proverbsVerses/proverbs22.csv'))
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
