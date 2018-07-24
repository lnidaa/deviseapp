ActiveAdmin.register Post do
  permit_params :title, :content, :published_at, :user_id
  action_item :publish, only: :show do
    debugger
    link_to "Publish", publish_admin_post_path(post), method: :put if !post.published_at?
  end
  member_action :publish, method: :put do
    post = Post.find(params[:id])
    post.update(published_at: Time.zone.now)
    redirect_to admin_post_path(post)
  end
end
