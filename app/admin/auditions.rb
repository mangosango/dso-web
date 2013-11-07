ActiveAdmin.register Audition do
  config.sort_order = "date_desc"

  index do
    column :date, sortable: :date do |audition|
      link_to audition.date.to_s(:long), edit_admin_audition_path(audition)
    end
    column :times
    column :location
    column :description
  end

  form do |f|
    f.inputs "Audition" do
      f.input :date, as: :datepicker
  	  f.input :times
  	  f.input :location
  	  f.input :description, as: :text
    end
    f.actions
  end
end
