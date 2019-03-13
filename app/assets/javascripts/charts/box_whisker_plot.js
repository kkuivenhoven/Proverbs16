/**
	* This function utilizes the ZingCharts API and produces a box and
	* whisker plot using pre-calculated values stored in the DB.
	*/

function getBoxWhiskerPlotConfig(least, q1, median, q3, greatest, numChap) {
// function getBoxWhiskerPlotConfig(numChap) {

	var bwp = [];
	bwp.push(parseInt(least));
	bwp.push(parseInt(q1));
	bwp.push(parseInt(median));
	bwp.push(parseInt(q3));
	bwp.push(parseInt(greatest));

	var bwpConfig = {
			"graphset":[
					{
							"type":"hboxplot",
							"plotarea":{ "margin":"100" },
							"scaleX":{
									"guide":{ "visible":false },
									"label":{ "text": 'Book of Proverbs:<br>Chapter selected: ' + numChap },
									"values":["1"]
							},
							"scaleY":{
									"label":{ "text":"Number of times a word is repeated (recurrence count)" }
							},
							"tooltip":{
								"paddingBottom":20
							},
							"title": {
								"text": "Word Recurrence Box and Whisker Plot <br>for chapter " + numChap + " of Proverbs (NIV)"
							},
							"options":{
									"box":{
											"barWidth":0.5,
											"background-color":"#4abdac",
											"tooltip":{
													"text":"The words with a value count in this region lie in the <i>inner quartile range</i>.<br>This just means that the words in this region occur at<br>generally the same frequency."
											}
									},
									"outlier":{
											"tooltip":{
													"text":"The words with a value count in this region the <i>outliers</i>.<br>This just means that the words in this region<br>occur either less or more than the allocated inner quartile range."
											},
											"marker":{ 
												"type":"circle",
												"background-color":"#ff0"
											}
									},
									"line-min-level":{
											"line-color": "#fc4a1a",
											"line-width": 3
									},
									"line-max-level":{
											"line-color": "#fc4a1a",
											"line-width": 3
									},
									"line-min-connector":{
											"line-width": 2,
											"line-color":"#db5284"
									},
									"line-max-connector":{
											"line-color":"#db5284",
											"line-width": 2
									},
									"line-median-level":{
											"alpha":0.5
									}
							},
							"series":[
									{ "dataBox": [bwp], }
							]
					}
			]
	};	

	return bwpConfig;
}

