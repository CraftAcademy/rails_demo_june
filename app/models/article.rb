class Article < ApplicationRecord
    validates_presence_of :title, :content, message: "needs to be set!"
end
