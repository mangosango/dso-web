ActiveAdmin.register About do

  index do
    column :image
    column :description
  end

  form do |f|
    f.inputs "Event" do
      f.input :image, placeholder: 'Group photo!. Ideal filesize is less than 500kb. Apples, make sure to photoshop and make it pretty :)'
      f.input :description, as: :text, input_html: { id: "redactor_here", class: "redactor", rows: "400" }
    end
    f.actions
  end
end
