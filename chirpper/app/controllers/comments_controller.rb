class CommentsController < ApplicationController

  def index
    @post = Post.find(params[:post_id])
    render json: @post.comments
  end


  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)

    if @comment.save
      render json: @comment, status: :created
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  def show
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id]) 
    render json: @Comment
  end
 
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy  
    render json: @comment
  end
 
  private
    def comment_params
      params.require(:comment).permit(:body)
    end


end
