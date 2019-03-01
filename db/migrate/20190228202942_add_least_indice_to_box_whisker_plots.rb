class AddLeastIndiceToBoxWhiskerPlots < ActiveRecord::Migration[5.0]
  def change
    add_column :box_whisker_plots, :least_indice, :integer
  end
end
