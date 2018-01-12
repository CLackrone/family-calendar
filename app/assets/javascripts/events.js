$(function() {
  var eventsArray = [];
  // var id = parseInt($(".js-next").attr("data-id"));

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
          var eventData = "<a href='#' data-id='" + eachEvent.id + "' class='js-more'>"
          + eachEvent.name + "</a><br>";
          $('#eventInfo').append(eventData);
        }
      )
    })
  }
})