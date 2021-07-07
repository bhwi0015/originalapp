import consumer from "./consumer"

consumer.subscriptions.create("CommentChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
     const html = `<p>${data.comment.content}</p>`;
     const comments = document.getElementById('comments');
     const newComment = document.getElementById('comment_content');
     comments.insertAdjacentHTML('afterbegin', html);
     newComment.value = '';
    }
});
