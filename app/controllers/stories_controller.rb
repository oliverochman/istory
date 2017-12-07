class StoriesController < ApplicationController
  def show
    @story = Story.find(params[:id])
    @first_chapter = Chapter.find_by(chapter_id: "A")
  end
end
