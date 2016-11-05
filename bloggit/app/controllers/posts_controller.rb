class PostsController < ApplicationController

  def index
    @posts = Post.all.order('created_at DESC')
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
  end

  def edit
  end

  def create
    @post = Post.new(post_params)
    @post.save

    if @post.save
      redirect_to @post, notice: 'Post was successfully updated.'
    else
      redirect_to :back, notice: 'Oops! There was an error! Please try again.'
    end
  end

  def update
  end

  def destroy
  end

  private
    def post_params
      params.require(:post).permit(:title, :body)
    end
end
