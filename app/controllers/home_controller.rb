class HomeController < ApplicationController
  def top
  end

  def correct
    @words=Word.where(judge:"〇",user_id:current_user.id)
  end
  
  def mistake
    @words=Word.where(judge:"×",user_id:current_user.id)
  end

  def correct_reverse
    @word=Word.find_by(id:params[:id])
    @word.judge="×"
    @word.save
    redirect_to("/correct")
  end

  def mistake_reverse
    @word=Word.find_by(id:params[:id])
    @word.judge="〇"
    @word.save
    redirect_to("/mistake")
  end

  def wordtest
    redirect_to("http://localhost:3001/?user_id=#{current_user.id}")
  end
end
