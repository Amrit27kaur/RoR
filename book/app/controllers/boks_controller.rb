class BoksController < ApplicationController

  def index

    @list_of_books = Bok.all

  end

  def show
    id=params[:id]
    @result_book = Bok.find(id)

  end

  def new

    @bok = Bok.new

  end



  def create

    @bok = Bok.new(
                  params.require(:bok).permit(:title, :description, :author)
    )
    result = @bok.save()
    if result
      redirect_to :controller => 'boks' , :action =>'index'
    else
      puts result
      puts "Not saved"
    end

  end
end
