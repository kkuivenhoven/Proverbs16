class CreateProverbs < ActiveRecord::Migration[5.0]
  def change
    create_table :proverbs do |t|
      t.integer :chapter
      t.integer :verse_num
      t.string :verse_text

      t.timestamps
    end
  end
end
