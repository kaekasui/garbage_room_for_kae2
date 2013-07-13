class BlogsController < ApplicationController
  before_action :set_blogs_data, only: [:index, :show]

  # GET /blogs
  # GET /blogs.json
  def index
    @blogs = Blog.all.page(params[:page]).per(10)
  end

  # GET /blogs/1
  # GET /blogs/1.json
  def show
    @blog = Blog.find(params[:id])
    @blog_comment = BlogComment.new
    @blog_comments = @blog.blog_comments
  end

  private

  def set_blogs_data
    @recent_blogs = Blog.recent_blogs
    @blog_links = BlogLink.all
    @recent_blog_comments = BlogComment.recent_blog_comments
  end

  def blog_params
    params.require(:blog).permit(:title, :contents1, :contents2)
  end
end
