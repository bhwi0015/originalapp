class PostsController < ApplicationController
    before_action :set_post, except: [:index, :create, :new]

  def index
    @posts = Post.all.order("created_at DESC")
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @comment = Comment.new
    @comments = @post.comments.order(created_at: :DESC)
  end

  def update
    if @post.update(post_params)
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  def destroy
     if @post.destroy
       redirect_to root_path
     else
       redirect_to root_path
     end
   end


  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:video, :image, :title, :description, :content).merge(user_id: current_user.id)
  end
end
