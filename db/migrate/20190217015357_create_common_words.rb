class CreateCommonWords < ActiveRecord::Migration[5.0]
  def change
    create_table :common_words do |t|
      t.integer :chapter_num
      t.integer :verse_num
      t.text :word_num

      t.timestamps
    end
  end
end
