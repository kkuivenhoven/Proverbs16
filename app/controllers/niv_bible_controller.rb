class NivBibleController < ApplicationController
	require 'oxford_dictionary'
	require 'dictionary_lookup'

	before_action :GetBookCount
	before_action :SetDictionary
	before_action :SetPath

  def proverbs
		@proverbs = Proverb.where("chapter = #{params[:chapNum]}").all.pluck(:verse_text)

		@common = CommonWord.where("chapter_num = #{params[:chapNum]}").all
		@common_sw = CommonWord.where("chapter_num = #{params[:chapNum]}").all.pluck(:verse_num_sw)
		@newHash = CommonWord.getCommonCount(@common_sw)
		@bwp = Chart.getBwp(params[:chapNum].to_i)

		@joinedVerses = Proverb.joinVerses(@proverbs)

		@chapNum = "?chapNum=" + params[:chapNum]
		@numChap = params[:chapNum]

		if params[:commit]
			@params = params[:searched_word].singularize
			@introAndVerify = Array.new
			insightIntro = "<br><h4>Recurrence count, definitions, and a statistics observation:</h4><br>".html_safe
			phraseVerify = "<p-small class='general-p'>You searched for the word <b>#{params[:searched_word]}</b>.</p-small><br><br>".html_safe
			@introAndVerify << insightIntro
			@introAndVerify << phraseVerify
		end
  end

	private
		
		def SetPath
			path = "/niv_bible" + "/" + params[:action]
			chNum = "?chapNum=" + params[:chapNum]
			@path_way = path + chNum 
		end

		def GetBookCount
			@key_values = CommonWord.getBookCount
		end

		def SetDictionary
			@client = OxfordDictionary::Client.new(app_id: 'da2df368', app_key: '68d4697c872564768e7ab948da306934')
		end

end
