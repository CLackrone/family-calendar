$(function() {
  //event handler for comments#index on event#show
  $('a.load_comments').on('click', function(e) {
    e.preventDefault();
    $.ajax({
      method: 'GET',
      url: this.href
    }).done(function(data) {
      $("div.comments_container").html(data);
    })
  })
})