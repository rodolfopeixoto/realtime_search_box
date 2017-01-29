// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

var ready = function() {

  var articles = new Bloodhound({
    datumTokenizer: Bloodhound.tokenizers.whitespace,
    queryTokenizer: Bloodhound.tokenizers.whitespace,
    remote: {
      url: '../searches?query=%QUERY',
      wildcard: '%QUERY'
    }
  });
  $('#query').typeahead(null, {
    source: articles
  });


};

$(document).ready(ready);
$(document).on('page:load', ready);