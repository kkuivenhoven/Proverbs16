class ChangeMedianToBeFloatInBoxWhiskerPlots < ActiveRecord::Migration[5.0]
  def change
		change_column :box_whisker_plots, :median, :float
  end
end
