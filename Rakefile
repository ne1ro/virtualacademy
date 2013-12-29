# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)
require 'curb'
require 'json'

Virtualacademy::Application.load_tasks

BASE_URI = 'http://localhost:3000/'
namespace :api do

  task :index, [:resource]  => :environment do |t, args|
    res = Curl.get "#{ BASE_URI }#{ args.resource }s.json" do |curl|
      curl.headers['Accept'] = 'application/json'
      curl.headers['Content-Type'] = 'application/json'
    end
    puts res.body_str
  end

  task :show, [:resource, :id] do |t, args|
    res = Curl.get "#{ BASE_URI }#{ args.resource }s/#{ args.id }.json" do |curl|
      curl.headers['Accept'] = 'application/json'
      curl.headers['Content-Type'] = 'application/json'
    end
    puts res.body_str
  end

end
