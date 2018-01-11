$(function() {
  var eventsArray = [];
  // var id = parseInt($(".js-next").attr("data-id"));

  if ($('#eventInfo').length) {
    loadEvents();
  }

  function loadEvents() {
    $.ajax({
      url: '/events.json',
      method: 'GET'
    })
    .then(function(data) {
      console.log(data)
    })
  }

})