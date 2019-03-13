/**
	* This function utilizes the ZingCharts API and produces a word cloud
	* of the recurring words with their total count available upon hover.
	* The verses of the chapter at hand are passed in as a string and so
	* are the stop words. The resulting configuration is returned to the
	* calling place.
	*/

function getWordChartConfig(joinedVerses, wordsToStop){

  var recWords = joinedVerses.replace(/&#39;/g, "'");
  var stopWords = wordsToStop.replace(/&quot;/g, "");

  var wordChartConfig = {
    type: 'wordcloud',
    options: {
      text: recWords,
      minLength: 5,
      ignore: stopWords,
      maxItems: 40,
      aspect: 'flow-center',
      rotate: true,
      colorType: 'palette',
      palette: ['#4abdac', '#fc4a1a', '#f78733', '#fc4a1a', '#cc0950'],
      style: {
        fontFamily: 'Crete Round',
        hoverState: {
          backgroundColor: '#D32F2F',
          borderRadius: 2,
          fontColor: 'white'
        },
        tooltip: {
          text: '%text: %hits',
          visible: true,
          alpha: 0.9,
          backgroundColor: '#1976D2',
          borderRadius: 2,
          borderColor: 'none',
          fontColor: 'white',
          fontFamily: 'Georgia',
          textAlpha: 1
        }
      }
    }
  };

	return wordChartConfig;
}
