class AddVerseNumSwToCommonWords < ActiveRecord::Migration[5.0]
  def change
    add_column :common_words, :verse_num_sw, :text
  end
end
