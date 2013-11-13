ActiveAdmin.register Contact do
  menu :label => 'Contact'

  index :title => "Contact" do
    column :phone do |contact|
      link_to contact.phone, edit_admin_contact_path(contact)
    end
  end
end