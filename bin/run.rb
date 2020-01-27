require_relative '../config/environment'
require 'rest-client'
require 'pry'
require 'json'
require 'tty-prompt'
require 'colorize'
ActiveRecord::Base.logger = nil