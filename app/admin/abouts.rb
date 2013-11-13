ActiveAdmin.register About, :as => "About" do

  # Make the label singular
  menu :label => 'About'

  index :title => "About" do
    column :image do |image|
      para = image_tag(image.image, height: 'auto', width: '200')
    end
    column :description do |desc|
      para = raw(desc.description)
    end
    column "" do |resource|
      links = ''.html_safe
      links += link_to I18n.t('active_admin.edit'), edit_resource_path(resource), :class => "member_link edit_link"
      links += link_to I18n.t('active_admin.delete'), resource_path(resource), :method => :delete, :confirm => I18n.t('active_admin.delete_confirmation'), :class => "member_link delete_link"
      links
    end
  end

  form do |f|
    f.inputs "About" do
      f.input :image, placeholder: 'Group photo!. Ideal filesize is less than 500kb. Apples, make sure to photoshop and make it pretty :)'
      f.input :description, as: :text, input_html: { id: "redactor_here", class: "redactor", rows: "400" }
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
