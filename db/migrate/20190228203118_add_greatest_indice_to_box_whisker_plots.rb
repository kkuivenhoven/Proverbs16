class AddGreatestIndiceToBoxWhiskerPlots < ActiveRecord::Migration[5.0]
  def change
    add_column :box_whisker_plots, :greatest_indice, :integer
  end
end
