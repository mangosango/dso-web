ActiveAdmin.register Concert do
  config.sort_order = "date_desc"

  index do
    column :date, sortable: :date do |concert|
      link_to concert.date.to_s(:long), edit_admin_concert_path(concert)
    end
    column :name
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
      f.input :name, placeholder: 'Keep it short! One or two words!!! Composer names preferred.'
      f.input :blackText, placeholder: 'leave blank for light text. TRUE for black text'
      f.input :date, as: :datepicker, placeholder: 'concert date. when is it?' 
      f.input :time, placeholder: 'What time will the concert begin?'
      f.input :image, placeholder: 'url to a nice low-contrast image. Ideal filesize is less than 500kb'
      f.input :ticket, placeholder: 'link to the ticket page where people can buy tickets. for example: https://hop.dartmouth.edu/Online/131109_dso'
      f.input :description, placeholder: 'A short one-sentence description'
    end
    f.actions
  end
end
