class PostRevertsController < ApplicationController
  before_filter :find_post
  def new
    if current_user == nil
      redirect_to new_user_session_path
    else
    @revert = Revert.new
    end
  end

  def create
    @revert = Revert.create(:content => params[:revert][:content], 
      :user_id => current_user.id, :post_id => @post.id)
    if @revert.save
      redirect_to post_path(:id => @post.id)
    else
      redirect_to posts_path
    end
  end

  protected
  def find_post
    @post = Post.find( params[:post_id] )
  end
end
