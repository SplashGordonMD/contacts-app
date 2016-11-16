class ContactsController < ApplicationController
  def email
    @contact = Contact.find_by(email: "Tom@uplink.com")
    render "contact.html.erb"
  end 
  def index
    @contacts=Contact.all
  render "index.html.erb"
 end

end
