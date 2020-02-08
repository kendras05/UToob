class SearchesController < ApplicationController
  def index
  @query = params[:q]
  @movies = Movie.where("body ILIKE ?", "%#{@query}%").order(created_at: :desc)
  end
end
