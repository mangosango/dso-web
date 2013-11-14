class ContactsController < InheritedResources::Base
  def index
    @contacts = Contact.all
  end
end
