ActiveAdmin.register Staff do
  index do
    column :name, sortable: :name do |staff|
      link_to staff.name, edit_admin_staff_path(staff)
    end
    column :team
    column :position
    column :photo
    column "" do |resource|
      links = ''.html_safe
      links += link_to I18n.t('active_admin.edit'), edit_resource_path(resource), :class => "member_link edit_link"
      links += link_to I18n.t('active_admin.delete'), resource_path(resource), :method => :delete, :confirm => I18n.t('active_admin.delete_confirmation'), :class => "member_link delete_link"
      links
    end
  end

  form do |f|
    f.inputs "Event" do
      f.input :team, placeholder: 'team is either creative or management. creative includes conductor and librarian.'
      f.input :name, placeholder: 'staff member\'s name'
      f.input :position, placeholder: 'what is this person\'s position? conductor? manager?'
      f.input :photo, placeholder: 'url to an image of this staff member. face should be centered in photo.'
    end
    f.actions
  end
end
