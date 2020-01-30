class User < ActiveRecord::Base
    has_many :choices
    has_many :adventures, through: :choices 
end