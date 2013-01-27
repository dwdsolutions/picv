class SmsController < ApplicationController
	def index
		@body = params[:Body]
		@from = params[:From]
		puts params.inspect

		render 'index.xml.rb', :content_type => 'text/xml'
	end
end