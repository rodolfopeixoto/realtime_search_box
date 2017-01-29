# History Model
require 'elasticsearch/model'
class History < ApplicationRecord
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
  validates :search, :count_search, :article, :ip_user, presence: true

  validates :count_search, numericality: { only_integer: true }
end
History.import(force: true, refresh: true)

