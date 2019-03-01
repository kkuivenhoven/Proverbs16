class AddMedianIndiceToBoxWhiskerPlots < ActiveRecord::Migration[5.0]
  def change
    add_column :box_whisker_plots, :median_indice, :integer
  end
end
