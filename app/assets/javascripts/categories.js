$(function() {

  //categories#show
  $('a.load_events').on('click', function(e) {
    $.ajax({
      method: 'GET',
      url: this.href
    }).done(function(data) {
      console.log(data)
    })


    e.preventDefault();
  })


})