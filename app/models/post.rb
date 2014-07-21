class Post
  include MongoMapper::Document

  key :title, String
  key :content, String

  timestamps!
end
