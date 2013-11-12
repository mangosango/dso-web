ActiveAdmin.register Event do
  config.sort_order = "date_desc"

  index do
    column :date, sortable: :date do |event|
      link_to event.date.to_s(:long), edit_admin_event_path(event)
    end
    column :name
    column "" do |resource|
      links = ''.html_safe
      links += link_to I18n.t('active_admin.edit'), edit_resource_path(resource), :class => "member_link edit_link"
      links += link_to I18n.t('active_admin.delete'), resource_path(resource), :method => :delete, :confirm => I18n.t('active_admin.delete_confirmation'), :class => "member_link delete_link"
      links
    end
  end

  form do |f|
    f.inputs "Event" do
      f.input :name
      f.input :date, as: :datepicker
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