class PostsController < ApplicationController

    def index
        @posts = Post.all
    end

    def new
        @posts = Post.new 
    end
    
    def create
        @posts = Post.new(params["posts"])
        @posts.save
        redirect_to "/posts"
    end

end
