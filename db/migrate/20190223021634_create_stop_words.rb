class CreateStopWords < ActiveRecord::Migration[5.0]
  def change
    create_table :stop_words do |t|
      t.text :word

      t.timestamps
    end
  end
end
