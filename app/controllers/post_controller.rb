class PostController < ApplicationController
    def index
        @posts = Post.all   
    end
    def create 
        pwriter = params[:writer]
        ptitle = params[:title]
        pcontent = params[:content]

        Post.create(writer: pwriter, title: ptitle, content: pcontent)

        redirect_to "/post/index"
    end
    def new 
    end

end
