class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
    render "contact.html.erb"
  end 
  
  def new
    render "new.html.erb"
  end

  def create
    message = Message.new(name: params[:name], address: params[:address])
    message.save
    render "create.html.erb"    
  end

  def show
    render "show.html.erb"
  end

  def edit
    render "edit.html.erb"
  end

  def update
    render "update.html.erb"
  end

  def destroy
    render "update.html.erb"
  end
end
