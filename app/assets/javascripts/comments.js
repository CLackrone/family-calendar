$(function() {

  //loads comments on event#show
  $('.load_comments').on('click', function(e) {
    e.preventDefault();
    //so it's this get request that needs some work
    $.get(this.href + '.json').success(function(data) {
      console.log(data)
      var commentsArray = data;

      $.each(commentsArray, function(index, comment) {
        var commentData = "<li>" + comment.content + "</li>";
        $('.comments_container').append(commentData);
      })
    })
  })
})