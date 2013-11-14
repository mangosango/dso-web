ActiveAdmin.register Contact do
  menu :label => 'Contact'

  index :title => "Contact" do
    column :category do |contact|
      link_to contact.category, edit_admin_contact_path(contact)
    end
    column :manager_1
    column :manager_2
  end
end