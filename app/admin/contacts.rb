ActiveAdmin.register Contact do
  menu :label => 'Contact'

  index :title => "Contact" do
    column :category do |contact|
      link_to contact.category, edit_admin_contact_path(contact)
    end
    column :manager_1
    column :manager_2
    column "" do |resource|
      links = ''.html_safe
      links += link_to I18n.t('active_admin.edit'), edit_resource_path(resource), :class => "member_link edit_link"
      links += link_to I18n.t('active_admin.delete'), resource_path(resource), :method => :delete, :confirm => I18n.t('active_admin.delete_confirmation'), :class => "member_link delete_link"
      links
    end
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