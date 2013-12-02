ActiveAdmin.register OrchestraSection do
  menu :label => 'Sections'

  index do
    column :name, sortable: :name do |section|
      link_to section.name, edit_admin_orchestra_section_path(section)
    end
    column :members do |section|
      section.members.length
    end
    column "" do |resource|
      links = ''.html_safe
      links += link_to I18n.t('active_admin.edit'), edit_resource_path(resource), :class => "member_link edit_link"
      links += link_to I18n.t('active_admin.delete'), resource_path(resource), :method => :delete, :confirm => I18n.t('active_admin.delete_confirmation'), :class => "member_link delete_link"
      links
    end
  end

  form do |f|
    f.inputs "Section" do
      f.input :name
      f.has_many :members do |member|
  	    member.inputs "Member" do
  	      member.input :name
          member.input :_destroy, :label => "Delete Member", :as => :boolean
  	    end
      end
	  end
    f.actions
  end
end