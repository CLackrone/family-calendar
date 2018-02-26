$(function() {

  //loads comments on event#show
  $('.load_comments').on('click', function(e) {
    e.preventDefault();
    $('.comments_container').html("")
    $.get(this.href + '.json').success(function(data) {
      const commentsArray = data;

      const newArray = commentsArray.filter(function(comment) {
        return comment.content.length >= 5
      })


      $.each(newArray, function(index, comment) {
        const commentData = "<li>" + comment.content + 
        "</li><a rel='nofollow' data-method='delete' href='/events/" + 
        comment.event_id + 
        "/comment/" + comment.id + "'>Delete</a>";
        $('.comments_container').append(commentData);
      })
    })
  })

  //new comment form
  $('#new_comment').on('submit', function(e) {
    const datas = $(this).serialize()
    
    $.ajax({
      method: 'POST',
      url: this.action,
      data: $(this).serialize(),
      dataType: 'json',
      success: function(response) {
        $("#comment_content").val("")
        const comment = new Comment(response)
        comment.formatContent()
      }
    })

    $(':submit').removeAttr('data-disable-with');
$(':submit').removeAttr('disabled');

    e.preventDefault();
  })

})

function Comment(data) {
  this.id = data.id
  this.content = data.content
  this.eventId = data.event_id
}
 
Comment.prototype.formatContent = function() {
  let html = "";
  html += "<li>" + this.content + "</li><a rel='nofollow' data-method='delete' href='/events/" + 
        this.eventId + 
        "/comment/" + this.id + "'>Delete</a>";
  $(".comments_container").append(html)
}















