# Article Controller
class ArticlesController < ApplicationController
  def index
    params_query = params[:query]
    @articles =
      if params_query.present?
        Article.search(clean_query(params_query))
      else
        Article.last(2)
      end
      search_history(clean_query(params_query)) if params_query.present?
  end

  private

  def search_history(word)
    History.search(word).map do |history|
      if are_the_equal?(history.search, word)
        count_search(history.search, history.count_search)
      else
        record_search(word)
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
    @history_search = History.search(history_word).records.last
    puts "count = #{count}"
    @update_history = @history_search.update_attribute(:count_search, count + 1)
    @update_history
  end

  def record_search(word)
    @create_history = History.create(search: word, count_search: 1, article: false ,ip_user: request.env['REMOTE_ADDR'])
    @create_history
  end


  def clean_query(word)
    word.gsub(/[(\d)]/, "").strip
  end
end
