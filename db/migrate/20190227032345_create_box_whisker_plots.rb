class CreateBoxWhiskerPlots < ActiveRecord::Migration[5.0]
  def change
    create_table :box_whisker_plots do |t|
      t.integer :median
      t.integer :first_quartile
      t.integer :second_quartile
      t.integer :third_quartile
      t.integer :least
      t.integer :greatest
      t.integer :chart_id

      t.timestamps
    end
  end
end
