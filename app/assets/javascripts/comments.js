$(function() {

  //loads comments on event#show
  $('.load_comments').on('click', function(e) {
    e.preventDefault();
    $('.comments_container').html("")
    $.get(this.href + '.json').success(function(data) {
      var commentsArray = data;

      const newArray = commentsArray.filter(function(comment) {
        return comment.content.length >= 5
      })


      //filter(function(arg) { return true})

      $.each(newArray, function(index, comment) {
        var commentData = "<li>" + comment.content + "</li>";
        $('.comments_container').append(commentData);
      })
    })
  })

  //new comment form
  $('#new_comment').on('submit', function(e) {
    let datas = $(this).serialize()
    
    $.ajax({
      method: 'POST',
      url: this.action,
      data: $(this).serialize(),
      dataType: 'json',
      success: function(response) {
        $("#comment_content").val("")
        var comment = new Comment(response)
        comment.formatContent()
      }
    })

    e.preventDefault();
  })

})

function Comment(data) {
  this.id = data.id
  this.content = data.content
  this.eventId = data.event_id
}
 
Comment.prototype.formatContent = function() {
  var html = "";
  html += "<li>" + this.content + "</li>";
  $(".comments_container").append(html)
}















