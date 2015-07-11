class PagesController < ApplicationController

  def index2
    @title = params[:title]
    @members = [
      {name: "Chris McCord"},
      {name: "Matt Sears"},
      {name: "David Stump"},
      {name: "Ricardo Thompson"}
    ]
    render "index"
  end

  def index
    @stories = Story.order(created_at: :desc).all    
    render json: @stories, each_serializer: StoriesSerializer
  end

end
