class ChangeFirstQuartileToBeFloatInBoxWhiskerPlots < ActiveRecord::Migration[5.0]
  def change
		change_column :box_whisker_plots, :first_quartile, :float
  end
end
