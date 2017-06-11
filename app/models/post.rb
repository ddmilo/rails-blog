class Post < ApplicationRecord
  include SimpleHashtag::Hashtaggable
  hashtaggable_attribute :content
  belongs_to :user

end
