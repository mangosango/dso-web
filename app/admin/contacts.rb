ActiveAdmin.register Contact do
  menu :label => 'Contact'

  index :title => "Contact" do
    panel "Contact Info" do
      table_for Contact.sections do
        column "section" do |section|
          section.title
        end
      end
    end
    # column :phone do |contact|
    #   link_to contact.phone, edit_admin_contact_path(contact)
    # end
    # column A
  end
end