class StoriesController < ApplicationController
  def show
    @story = Story.find(params[:id])
    @first_chapter = @story.chapters.first
  end
end
