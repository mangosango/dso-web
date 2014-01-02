ActiveAdmin.register OrchestraSection do
  menu :label => 'Orchestra Members'

  index do
    column :position, sortable: :position do |section|
      link_to section.position, edit_admin_orchestra_section_path(section)
    end
    column :name
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
      f.input :position
      f.has_many :members do |member|
  	    member.inputs "Musician" do
  	      member.input :name
          member.input :_destroy, :label => "Delete Musician", :as => :boolean
  	    end
      end
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