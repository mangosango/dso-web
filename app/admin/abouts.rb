ActiveAdmin.register About do

  index do
    column :image
    column :description
    column "" do |resource|
      links = ''.html_safe
      links += link_to I18n.t('active_admin.edit'), edit_resource_path(resource), :class => "member_link edit_link"
      links += link_to I18n.t('active_admin.delete'), resource_path(resource), :method => :delete, :confirm => I18n.t('active_admin.delete_confirmation'), :class => "member_link delete_link"
      links
    end
  end

  form do |f|
    f.inputs "Event" do
      f.input :image, placeholder: 'Group photo!. Ideal filesize is less than 500kb. Apples, make sure to photoshop and make it pretty :)'
      f.input :description, as: :text, input_html: { id: "redactor_here", class: "redactor", rows: "400" }
    end
    f.actions
  end
end
