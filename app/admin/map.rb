ActiveAdmin.register_page "Mapa" do
  content title: "Mapa de dispositivos" do
    columns do
      column do
        panel "Mapa" do
          render partial: "admin/checkins/map_view", locals: {
            checkins: Checkin.all.to_a.uniq(&:device_name)
          }
        end
      end

      column do
        panel "Estadísticas" do
          render partial: "admin/checkins/charts"
        end

        panel "Feed en vivo" do
          render partial: "admin/checkins/feed"
        end
      end
    end
  end
end
