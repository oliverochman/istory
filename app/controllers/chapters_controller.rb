class ChaptersController < ApplicationController
  def show
    params.permit!
    @chapter = Chapter.find(params[:id])
    #binding.pry
  end
end
