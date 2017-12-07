class ChaptersController < ApplicationController
  def show
    params.permit!
    @chapter = Chapter.find(params[:id])
    @chapter_a = Chapter.find_by(chapter_id: @chapter.chapter_id + "A")
    @chapter_b = Chapter.find_by(chapter_id: @chapter.chapter_id + "B")
  end
end
