class PostsController < ApplicationController

  def new
    @post = Post.new
    @post.place_id = params["place_id"]
  end

  def create
    @post = Post.new(params["post"])
    @post.user_id = @current_user.id #set user_id in the database
    @post.save
    redirect_to "/places/#{@post.place.id}"
  end

end
