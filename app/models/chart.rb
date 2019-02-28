class Chart < ApplicationRecord
	has_many :box_whisker_plots, dependent: :destroy

	def self.getBwp(chapter)
		@chart = Chart.where("chapter = '#{chapter}'").all.first 
		@bwp = @chart.box_whisker_plots.first
		return @bwp	
	end

end
