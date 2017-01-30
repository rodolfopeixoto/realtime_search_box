# Searches Controller
class SearchesController < ApplicationController
  def index
    params_query = params[:query]
    @articles =
      if params_query.nil?
        []
      else
        Article.search(params_query).map { |article| "#{article._source.title} ( #{get_history(article._source.title)} )" }
      end
    render json: @articles
  end

  private

  def get_history(query)
   count = History.search(query).records.last.count_search
   count
  end
end
