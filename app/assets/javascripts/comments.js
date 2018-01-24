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

  //new comment form
  $('#new_comment').on('submit', function(e) {
    url = this.action

    data = {
      'authenticity_token': $("input[name='authenticity_token']").val(),
      'comment': {
        'content': $('#comment_content').val()
      }
    };
    //logging the data I want
    console.log(data)

    //no "success"?
    $.ajax({
      type: 'POST', 
      url: url,
      data: data,
      success: function(response) {
        $('.comments_container').append(response)
      }
    })

    e.preventDefault();
  }); //end of #new_comment post request



})


//$.post( "ajax/test.html", function( data ) {
  //$( ".result" ).html( data );
//});

//$.ajax({
  //type: "POST",
  //url: url,
  //data: data,
  //success: success,
  //dataType: dataType
//});
