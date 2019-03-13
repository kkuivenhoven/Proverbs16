class StaticPagesController < ApplicationController
	require 'oxford_dictionary'
	require 'dictionary_lookup'

	before_action :get_book_count
	before_action :set_dictionary

  def home
		@wordRecurCount = CommonWord.getWordRecurrenceTotal
  end

	private
		
		def get_book_count
			@key_values = CommonWord.getBookCount
		end

		def set_dictionary
			@client = OxfordDictionary::Client.new(app_id: 'da2df368', app_key: '68d4697c872564768e7ab948da306934')
		end

end
