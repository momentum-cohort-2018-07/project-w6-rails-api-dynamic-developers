class PostsController < ApplicationController

  # GET /post
  def index
    @post = Post.all
    render json: @post
  end
  # GET /post/post_id
  def show
    @post = Post.find(params[:id])
      render json: @post
  end

  # POST /posts
  def create
    @post = Post.new(post_params)

    if @post.save
      render json: @post, status: :created, location: @post
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  # DELETE /posts/1
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    render json: @post
  end

  private
  
  # Only allow a trusted parameter "white list" through.
    def post_params
      params.require(:post).permit(:body)
    end

end


