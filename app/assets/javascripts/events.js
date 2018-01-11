$(function() {
  var eventsArray = [];

  if ($('#eventInfo').length) {
    loadEvents();
  }

  // For events#index

  function loadEvents() {
    //ajax call 
    $.ajax({
      url: '/events.json',
      method: 'GET'
    })
    .then(function(data) {
      console.log(data)
      eventsArray = data;

      //jQuery.each( array, callback )
      $.each(
        eventsArray, function(index, eachEvent) {
          console.log(eachEvent)
        }
        )
    })
  }

})