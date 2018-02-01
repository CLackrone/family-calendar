$(function() {

  //loads comments on event#show
  //append will allow entire comments array to load repeatedly, html only loads the last comment
  $('.load_comments').on('click', function(e) {
    e.preventDefault();
    $('.comments_container').html("")
    //so it's this get request that needs some work
    $.get(this.href + '.json').success(function(data) {
      var commentsArray = data;

      $.each(commentsArray, function(index, comment) {
        var commentData = "<li>" + comment.content + "</li>";
        $('.comments_container').append(commentData);
      })
    })
  })


  //new comment form
  //on click, state of button, disabled... what'
  $('#new_comment').on('submit', function(e) {
    let datas = $(this).serialize()
    
    $.ajax({
      method: 'POST',
      url: this.action,
      data: $(this).serialize(),
      dataType: 'json',
      //response is actually json now
      success: function(response) {
        $("#comment_content").val("")
        var comment = new Comment(response)
        comment.formatComment()
      }
    })

    e.preventDefault();

  })



})


function Comment(data) {
  this.id = data.id
  this.content = data.content
  this.event_id = data.event_id
}


  
Comment.prototype.formatContent = function() {
  var html = "";
  html += "<li>" + this.content + "</li>";
  $(".comments_container").append(html)
}
