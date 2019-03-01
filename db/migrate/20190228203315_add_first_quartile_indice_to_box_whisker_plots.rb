class AddFirstQuartileIndiceToBoxWhiskerPlots < ActiveRecord::Migration[5.0]
  def change
    add_column :box_whisker_plots, :first_quartile_indice, :integer
  end
end
