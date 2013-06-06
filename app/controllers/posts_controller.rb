class PostsController < ApplicationController
  load_and_authorize_resource

  def index
    @post = Post.page(params[:page]).per(5).order("id DESC")
    @node =Node.all
  end

  def new
    @post = Post.new

  end

  def create
    @post = current_user.posts.create(params[:post])
    if @post.save
      redirect_to post_path(@post)
    else
      render 'new'
    end
  end

  def show
    @post = Post.find(params[:id])
    @user = @post.user
    @revert = Revert.where(:post_id => @post.id).all
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update_attributes(params[:post])

    redirect_to posts_path
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end
end
  