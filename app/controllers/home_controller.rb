class HomeController < ApplicationController
  def index
  	#@posts = Post.all

    @posts = if params[:search]
      #@posts = Post.find_with_index(params[:search])
      @query = params[:search].downcase
      @posts = Post.where("lower(content) LIKE ? OR lower(title) LIKE ? ", "%#{@query}%", "%#{@query}%")  
      #name = params[:search]
      #@posts = Post.find(:first, :conditions => [ "lower(content) LIKE ?", name.downcase ])
    else
      @posts = Post.all
end
    @categories = Category.all

    respond_to do |format|
      format.html # index.html.erb
      format.js # index.js.erb
      format.json { render json: @categories }
    end
end
end