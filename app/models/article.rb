# Article Model
require 'elasticsearch/model'
class Article < ApplicationRecord
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
  validates :title, :content, presence: true

end
Article.import(force: true, refresh: true)
