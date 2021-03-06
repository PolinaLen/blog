class Article < ActiveRecord::Base
    belongs_to :user
    validates :title, presence: true, length:{minimum: 5, maximum:55}
    validates :description, presence: true, length:{minimum: 5, maximum:100}
    
end