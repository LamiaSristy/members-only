module PostsHelper
  def check_signed
    if user_signed_in?
      # <%= link_to "Create a New Post", new_post_path %>
      "<a href='/posts/new'>Create a new post</a>".html_safe
    end
  end

  def display_user_email(post)
    if user_signed_in?
      "<p>#{post.user.email}</p>".html_safe
     end
  end
end
