class StoriesController < ApplicationController
  def show
    @story = Story.find(params[:id])
    #binding.pry
    @first_chapter = @story.chapters.first
  end
end
