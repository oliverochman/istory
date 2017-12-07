class ChaptersController < ApplicationController
  def show
    @chapter = Chapter.find(params[:id])
    @chapter_a = Chapter.find_by(chapter_id: @chapter.chapter_id + "A")
    @chapter_b = Chapter.find_by(chapter_id: @chapter.chapter_id + "B")
    @chapter_c = Chapter.find_by(chapter_id: @chapter.chapter_id + "C")
  end
end
