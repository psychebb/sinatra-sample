require 'sinatra'
require 'json'

get '/hello' do
    "hello, world"
end

get '/world' do
    "world, hello"
end

def prepare    
    students = []
    (1..10).each do |item|
        students << {:name => "stud-#{item}", :id => item}
    end
    students
end

get '/students' do    
    students = prepare()
    students.to_json
end

get '/students/:id' do
    students = prepare()
    students.select do |student|
        student[:id].to_s == params[:id]
    end.to_json
end

# get post put delete

post '/students' do
    
end
