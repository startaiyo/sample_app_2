class PostsController < ApplicationController
  def index
    @words = Word.all
  end

  def create
    @word=Word.new(word: params[:word],meaning: params[:meaning])
    @word.save
    if @word.save
      redirect_to("/posts/index")
    else
      redirect_to("/posts/error")
    end
  end

  def destroy
    @word=Word.find_by(id:params[:id])
    @word.destroy
    redirect_to("/posts/index")
  end

  def error
  end
end
