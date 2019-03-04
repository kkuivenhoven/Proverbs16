# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Loading csv files is starting"
Rake::Task['load_csv:load_all_csv'].execute
puts "Loading csv files is completed"

puts "Saving words is starting"
Rake::Task['save_word_count:save_words'].execute
puts "Saving words is completed"

puts "Saving stop words is starting"
Rake::Task['save_word_count:stop_words'].execute
puts "Saving stop words is completed"

puts "Running verse_num_sw"
Rake::Task['save_word_count:verse_num_sw'].execute
puts "Running verse_num_sw is completed"

puts "Running add_box_whisker_data"
Rake::Task['add_charts:add_box_whisker_data'].execute
puts "Running add_box_whisker_data is completed"

