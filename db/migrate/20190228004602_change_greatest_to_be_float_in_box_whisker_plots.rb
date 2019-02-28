class ChangeGreatestToBeFloatInBoxWhiskerPlots < ActiveRecord::Migration[5.0]
  def change
		change_column :box_whisker_plots, :greatest, :float
  end
end
