ActiveAdmin.register Event do
  config.sort_order = "date_desc"

  index do
    column :date, sortable: :date do |event|
      link_to event.date.to_s(:long), edit_admin_event_path(event)
    end
    column :name
    column :description
  end

  form do |f|
    f.inputs "Event" do
      f.input :name
      f.input :date, as: :datepicker
      f.input :description, as: :html_editor
    end
    f.actions
  end
end