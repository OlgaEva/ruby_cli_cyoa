class Adventure < ActiveRecord::Base
    has_many :choices
    has_many :users, through: :choices 
end