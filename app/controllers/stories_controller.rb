class StoriesController < ApplicationController

  def create

  end

  def show
    binding.pry
    @story = Story.find(params[:id])
  end
end
