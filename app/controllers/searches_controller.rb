# Searches Controller
class SearchesController < ApplicationController
  def index
    params_query = params[:query]
    @articles =
      if params_query.nil?
        []
      else
        Article.search(params_query).map { |article| article._source.title }
      end
    render json: @articles
  end
end
