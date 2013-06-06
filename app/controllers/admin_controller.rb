class AdminController < ApplicationController
  def postadmin
    @post = Post.page(params[:page]).per(5).order("id DESC")
  end
end
