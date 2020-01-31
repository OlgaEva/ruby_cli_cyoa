require_relative '../config/environment'
require 'rest-client'
require 'pry'
require 'json'
require 'tty-prompt'
require 'colorize'

ActiveRecord::Base.logger = nil

class Adventure
    puts "Welcome to Choose Your Own Adventure!".colorize(:red)

    def initialize
        @prompt = TTY::Prompt.new
        @current_user = nil
    end

    def initial_interaction
        @prompt.select("Are you a new or returning User?") do |menu|
            menu.choice "New", -> do
                puts ("Welcome, please choose a Username:")
                new_user = gets.chomp
            end
        end
    end

    # cli = Adventure.new
    # cli.all_user_initial_interaction

end
