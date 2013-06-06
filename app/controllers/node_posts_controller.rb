class NodePostsController < ApplicationController
  before_filter :find_node
  def index
    @post = @node.posts.page(params[:page]).per(5)
  end

  protected
  def find_node
    @node = Node.find(params[:node_id]) 
  end
end
