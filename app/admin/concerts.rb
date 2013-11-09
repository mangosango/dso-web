ActiveAdmin.register Concert do
  config.sort_order = "date_desc"

  index do
    column :date, sortable: :date do |concert|
      link_to concert.date.to_s(:long), edit_admin_concert_path(concert)
    end
    column :name
    column :description
  end

  form do |f|
    f.inputs "Event" do
      f.input :name
      f.input :description
      f.input :date, as: :datepicker
      f.input :time
      f.input :image
      f.input :ticket
      f.input :videoSource
    end
    f.actions
  end
end
