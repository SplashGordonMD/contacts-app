class Contact < ApplicationRecord
  

  def friendly_update_at
    updated_at.strftime("%B %e, %Y")
  end 
  
  def full_name
    "#{first_name} #{last_name}""
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
