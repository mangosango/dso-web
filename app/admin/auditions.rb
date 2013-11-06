ActiveAdmin.register Audition do
  form do |f|
    f.inputs "Audition" do
      f.input :date, as: :datepicker
  	  f.input :times
  	  f.input :location
  	  f.input :description
    end
    f.actions
  end
end
