$(function() {
  // var id = parseInt($(".js-next").attr("data-id"));

  if ($('#eventInfo').length) {
    loadEvents();
  }

  // For events#index

  function loadEvents() {
    $.ajax({
      url: '/events.json',
      method: 'GET'
    })
    .then(function(data) {
      console.log(data)
      const eventsArray = data;

      //jQuery.each( array, callback )
      $.each(eventsArray, function(index, eachEvent) {
        const eventData = "<div id='event-" + eachEvent.id + "'>"
        + "<a href='#' data-id='" + eachEvent.id + "' class='js-more'>"
        + eachEvent.name + "</a></div>";
        $('#eventInfo').append(eventData);
      })      
    })
  }


  //event handler to display event details 
  $('#eventInfo').on('click', '.js-more', function(e) {
    e.preventDefault();
    const id = this.dataset.id;
    $.get('/events/' + id + '.json', function(data) {
      const eventDetails = "<div id='details-" + id + "'>"
      + "<a href='/events/" + id + "'>" + data.name + "</a>"
      + "<p>Time: " + data.time + "</p>" 
      + "<p>Location: " + data.location + "</p></div>";
      $('#event-' + id).html(eventDetails);
    })
  })


})




