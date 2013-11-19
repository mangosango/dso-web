ActiveAdmin.register Contact do
  menu :label => 'Contact'

  index :title => "Contact" do
    column :category do |contact|
      link_to contact.category, edit_admin_contact_path(contact)
    end
    column :manager_1
    column :manager_2
  end

  form do |f|
    f.inputs "Contact" do
      f.input :category
      f.input :manager_1, :collection => Staff.all.map{ |staff| [staff.name] }
      f.input :manager_2, :collection => Staff.all.map{ |staff| [staff.name] }
    end
    f.actions
  end

  controller do
    def update
      update! do |format|
        format.html { redirect_to collection_path }
      end
    end
  end
end