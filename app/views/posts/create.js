$("#post_index_new").html("<%= escape_javascript(render 'posts/post_new', posts: @posts) %>")
