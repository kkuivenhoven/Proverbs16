class RemoveSecondQuartileFromBoxWhiskerPlots < ActiveRecord::Migration[5.0]
  def change
    remove_column :box_whisker_plots, :second_quartile, :integer
  end
end
