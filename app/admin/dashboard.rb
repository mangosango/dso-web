ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do
    # div :class => "blank_slate_container", :id => "dashboard_default_message" do
    #   span :class => "blank_slate" do
    #     span I18n.t("active_admin.dashboard_welcome.welcome")
    #     small I18n.t("active_admin.dashboard_welcome.call_to_action")
    #   end
    # end

    # Here is an example of a simple dashboard with columns and panels.
    
    columns do

      column do
        panel "Info" do
          para "Welcome to the DSO website admin panel!"
        end
      end

      column do
        panel "Recent Events" do
          ul do
            for event in Event.all.sort_by(&:date).reverse do
              li link_to(event.name, edit_admin_event_path(event))
              para event.date

            end
          end
        end
      end

      column do
        panel "Concerts" do
          ul do
            for concert in Concert.all.sort_by(&:date).reverse do
              li link_to(concert.name, edit_admin_concert_path(concert))
              div concert.date
              para truncate(concert.description, :length => 50)
            end
          end
        end
      end

      column do
        panel "Audition Info" do
          ul do
            for audition in Audition.all do
              li link_to(audition.date, edit_admin_audition_path(audition))
              para raw(audition.description)
            end
          end
        end
      end
    end
  end # content
end
