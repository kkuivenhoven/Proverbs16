class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
	before_action :instantiate_global_vars

	def instantiate_global_vars
		@chapters = Chart.pluck(:chapter) 
		@sw = StopWord.all.pluck(:word)
		@titleName = (params[:chapNum].nil? ? "Proverbs" : "Proverbs " + params[:chapNum].to_s)
	end

end
