class BlogsController < ApplicationController

  def index

    @list_of_blogs = Blog.all



  end

  def current_user
    @_current_user ||= session[:current_user_id] &&
        User.find_by_id(session[:current_user_id])
  end



def dashboard                                      

  @blog = Blog.dashboard
  id=params[:id]
  @result_dashboard = Blog.find(id)
end



  def show

    id=params[:id]
    @result_blog = Blog.find(id)

  end

  def new

    @blog = Blog.new

  end

  def create

    @blog = Blog.new(
        params.require(:blog).permit(:title, :description, :author)
    )
    result = @blog.save()
    if result
      redirect_to :controller => 'blogs' , :action => 'index'
    else
      puts result
      puts "Not saved"
    end

  end

  def destroy
    id = params[:id]

    Blog.destroy(id)
    redirect_to :controller => 'blogs' , :action => 'index'
  end
end

