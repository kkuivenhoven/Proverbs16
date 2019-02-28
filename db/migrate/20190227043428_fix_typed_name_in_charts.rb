class FixTypedNameInCharts < ActiveRecord::Migration[5.0]
  def change
		rename_column :charts, :type, :chart_type
  end
end
