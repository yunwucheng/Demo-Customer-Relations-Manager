class FinderController < ApplicationController
   def index
      @page_title = 'All Custormers'
      @customers = Customer.all
   end
   # app/views/finder/index.html.erb

   def alphabetized
      @page_title = 'Alphabetized Custormers'
      @customers = Customer.order(:full_name)
      render :index
   end

   def missing_email
      @page_title = 'Custormers Missing Email Address'
      @customers = Customer.where(email_address: '')
      render :index
   end
end
