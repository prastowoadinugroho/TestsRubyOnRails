require 'elasticsearch/model'

class Post < ApplicationRecord
    include Elasticsearch::Model
    include Elasticsearch::Model::Callbacks
end
