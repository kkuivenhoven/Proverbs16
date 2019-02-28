class ChangeLeastToBeFloatInBoxWhiskerPlots < ActiveRecord::Migration[5.0]
  def change
		change_column :box_whisker_plots, :least, :float
  end
end
