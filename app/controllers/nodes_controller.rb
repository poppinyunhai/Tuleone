class NodesController < ApplicationController
  load_and_authorize_resource
  def index
    @node = Node.all
  end

  def new
    @node = Node.new
  end

  def create
    @node = Node.create(params[:node])
    redirect_to :action => :index
  end

  def show
    @node = Node.find(params[:id])
  end

  def edit
    @node = Node.find(params[:id])
  end

  def update
    @node = Node.find(params[:id])
    @node.update_attributes(params[:node])

    redirect_to nodes_path
  end

  def destroy
    @node = Node.find(params[:id])
    @node.destroy

    redirect_to nodes_path
  end
end
