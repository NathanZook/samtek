#!/usr/bin/env ruby
require 'sinatra'

get '/' do
  erb :index
end

RandSource = Kernel

post '/wangernum' do
   wangy = Math.atan(params[:one].to_f) - Math.atan(params[:two].to_f) + Math::PI < RandSource.rand * 2 * Math::PI
   erb :wangernum, locals: {wangy: wangy}
end
