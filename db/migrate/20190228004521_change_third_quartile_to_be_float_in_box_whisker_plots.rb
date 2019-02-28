class ChangeThirdQuartileToBeFloatInBoxWhiskerPlots < ActiveRecord::Migration[5.0]
  def change
		change_column :box_whisker_plots, :third_quartile, :float
  end
end
