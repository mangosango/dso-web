class ContactsController < InheritedResources::Base
  def index
    @contacts = Contact.all
    @staff = Staff.all
  end
end