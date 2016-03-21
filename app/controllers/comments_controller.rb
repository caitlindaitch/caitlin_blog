class CommentsController < ApplicationController
  # Again, your not using this route so theres no need to have index in your controller
  def index
    @comment = Comment.all
  end

  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create!(comment_params)

    redirect_to post_url(@post)
  end

  def show
    @comments = Comment.all
  end

  def edit
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
  end

  def update
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)

    redirect_to post_url(@post)
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    redirect_to post_url(@post)
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :author)
  end
end
