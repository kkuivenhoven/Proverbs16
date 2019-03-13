class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

	# Note: inst is abbreviated for instantiation for variable length purposes
	before_action :instantiate_application_wide_vars
	before_action :instantiate_html_partials_vars


	def instantiate_html_partials_vars
		@apaCitation = "<br><small>APA Citation: Zondervan, (1995) <i>The NIV Study Bible.</i> Grand Rapids, Michigan: Zondervan<br></small>".html_safe
		if params[:action] == "proverbs"
			@versesIntro = "<br><h3>NIV translation of Proverbs, chapter #{params[:chapNum]}:</h3>".html_safe
		else
			@versesIntro = "".html_safe
		end
	end


	def instantiate_application_wide_vars
		@titleName = (params[:chapNum].nil? ? "Proverbs" : "Proverbs " + params[:chapNum].to_s)
		@chapters = Chart.pluck(:chapter) 
		@sw = StopWord.all.pluck(:word)
		@wordSearched = (params[:commit].nil? ? false : true)
		@note = "<p class='min-p-width jumbotron-p'>Please note that statistical measurement(s) 
							and word recurrence counts are based on the Bible version 
							that is cited at the bottom.</p>".html_safe
		if @wordSearched == false
				p1_noWordSearched = "		
														<div class='row'>
															<div class='container' id='nswMainHdr'>
																<p class='nswMainHdrLeft'>
																	Please choose a word from the passage on the left and 
																	type it into the search box located below.
																</p>
															</div>
														</div>
														".html_safe
			p2_noWordSearched = "true"
			p3_noWordSearched = "
														<div class='row'>
															<div class='container' id='nswInfoDiv'>
																<p class='nswInfoHdr1'>
																	Upon submitting your word of choice, you will gain additional external insight knowledge on that word.
																	<span class='nswInfoRight'>&nbsp;</span>
																</p>
																<p class='nswInfoHdr2'>
																	External insight knowledge includes:
																	<span class='nswInfoRight'>&nbsp;</span>
																</p>
																<p class='nswInfoLeft'>
																	&#8226; # of times the word is repeated in Prov. #{params[:chapNum]}
																</p>
																<p class='nswInfoLeft'>
																	&#8226; # of times the word is repeated in Prov. itself 
																</p>
																<p class='nswInfoLeft'>
																	&#8226; definition of the word in the Oxford dictionary 
																</p>
																<p class='nswInfoLeft'>
																	&#8226; definition of the word in the Pearson dictionary
																</p>
																<p class='nswInfoLeft'>
																	&#8226; a box and whisker plot (statistical measurement) of all 
																	word recurrences/repetitions for Prov. #{params[:chapNum]}
																</p>
															</div>
														</div>
														".html_safe
=begin
																	&nbsp;&nbsp;&#8226; # of times the word is repeated in Prov. #{params[:chapNum]}<br>
																	&nbsp;&nbsp;&#8226; # of times the word is repeated in Prov. itself<br>
																	&nbsp;&nbsp;&#8226; definition of the word in the Oxford dictionary<br>
																	&nbsp;&nbsp;&#8226; definition of the word in the Pearson dictionary<br>
																	&nbsp;&nbsp;&#8226; a box and whisker plot (statistical measurement) 
																										of all word recurrences/repetitions for Prov. #{params[:chapNum]}<br>

														The insight knowledge displayed will include the number of times the word is repeated in the whole chapter  
														and in the entire book. For further understanding, definitions from the Oxford dictionary and 
														the Pearson dictionary are included. Below the definitions, a box and whisker plot (statistical measurement) 
														will be displayed for all word recurrences/repetitions for Proverbs #{params[:chapNum]}.
=end
			@noWordSearched = Array.new
			@noWordSearched << p1_noWordSearched
			@noWordSearched << p2_noWordSearched
			@noWordSearched << p3_noWordSearched
		end
	end



end
