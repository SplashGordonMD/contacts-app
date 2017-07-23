class ExampleController < ApplicationController

	def index
		@contacts = Contact.all
		render "index.html.erb"
	end
	
	def new
	    render "new.html.erb"
	end

	def create
	  contact = Contact.new(name: params[:name], email: params[:email], phone: params[:phone])	
	  contact.save
	  render "create.html.erb"
	end

	def show
	 	@contact = Contact.find_by(id: params[:id])
	 	render "show.html.erb"
	 end
	 
	 def edit
	 	@movie = Contact.find_by(id: params[:id])	
	 	render "edit.html.erb"
	 end

	 def undate
	 	@contact = Contact.find_by(id: params[:id])
	 	@contact.name = params[:name]
	 	@contact.email = params[:email]
	 	@contact.phone = params[:phone]
	 	@contact.save
	 	render "update.html.erb"
	 end

	 def destroy
	 	@contact = Contact.find_by(id: params[:id])
	 	contact.destroy
	 	render "distroy.html.erb"
	end
end


