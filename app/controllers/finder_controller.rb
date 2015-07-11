class FinderController < ApplicationController
	def index
		@customers = Customer.all
	end
	# app/views/finder/index.html.erb
end
