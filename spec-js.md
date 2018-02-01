# Specifications for the Rails with jQuery Assessment

Specs:
- [X] Use jQuery for implementing new requirements
- [X] Include a show resource rendered using jQuery and an Active Model Serialization JSON backend.
  - Render Event show data on events#index(events.js 31)
- [X] Include an index resource rendered using jQuery and an Active Model Serialization JSON backend.
  - Events index page renders via AJAX call (events.js 9)    
- [X] Include at least one has_many relationship in information rendered via JSON and appended to the DOM.
  - Event comments on event#show (comments.js 3)
- [X] Use your Rails API and a form to create a resource and render the response without a page refresh.
  - Event comment form (comments.js 17)
- [X] Translate JSON responses into js model objects.
  - Event comment form (comments.js 29, 39)
- [X] At least one of the js model objects must have at least one method added by your code to the prototype.
  - Event comment uses method, Comment.formatContent() to format comment content prior to inserting to the DOM (comments.js 30, 45)

Confirm
- [X] You have a large number of small Git commits
- [X] Your commit messages are meaningful
- [X] You made the changes in a commit that relate to the commit message
- [X] You don't include changes in a commit that aren't related to the commit message