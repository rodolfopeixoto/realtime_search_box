# Article Controller
class ArticlesController < ApplicationController
  def index
    params_query = params[:query]
    @articles =
      if params_query.present?
        Article.search(params_query)
      else
        Article.last(2)
      end
  end

  private

  def search_history(word)
    History.search(word).map do |history|
      if are_the_equal?(history.word, word)
        count_search(history.word, history.count_search)
        puts "#{count_search(history.word, history.count_search)}"
      else
        # criar um novo
      end
    end
  end

  def are_the_equal?(history_word, params_word)
    history_word = history_word.downcase
    params_word = params_word.downcase

    if history_word == params_word
      return true
    end
    false
  end

  def count_search(history_word, count)
    @history = History.search(history_word).records.last
    @history.update_atrributes(count_search: count_search + 1)
  end
end
