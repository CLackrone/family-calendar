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
        "<a rel='nofollow' class='comment_delete' data-method='delete' href='/events/" + 
        comment.event_id + 
        "/comments/" + comment.id + "'>Delete</a></li>";
        $('.comments_container').append(commentData);
      })
      attachCommentListener();
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


  //delete comment

  // $('.comments_container').on('click', '.comment_delete', function(e) {
  //   $.ajax({
  //     url: this.href,
  //     type: 'DELETE'    
  //   }).then(function(data) {
  //     console.log('random string')
  //     $('.comment_delete').remove()
  //   })

  
  function attachCommentListener() {
  $('.comment_delete').on('click', function(e) {

    e.preventDefault();
    e.stopPropagation();

    const urlToDelete = $(this)

    $.ajax({
      type: 'DELETE',
      url: $(urlToDelete).attr('href'),
      dataType: 'json',
      success: function() {

        console.log(urlToDelete)
        //removes delete button from just current li
        $(urlToDelete).parent().remove();
        //removes delete button
        //$('.comment_delete').remove()
      },
      error: function(err) {
        debugger
        console.log ("url = " + urlToDelete)
        console.log("got an error - " + err)
      }
  
    })

    
  })
}




})













function Comment(data) {
  this.id = data.id
  this.content = data.content
  this.eventId = data.event_id
}
 
Comment.prototype.formatContent = function() {
  let html = "";
  html += "<li>" + this.content + "<a rel='nofollow' class='comment_delete' data-method='delete' href='/events/" + 
        this.eventId + 
        "/comments/" + this.id + "'>Delete</a></li>";
  $(".comments_container").append(html)
}















