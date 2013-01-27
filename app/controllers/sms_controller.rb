class SMSController < ApplicationController
	def index
		@body = params[:body]
		@from = params[:from]

		render 'index.xml.rb', :content_type => 'text/xml'
	end
end