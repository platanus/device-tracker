ActiveAdmin.register_page "Mapa" do
  content title: "Mapa de dispositivos" do
    columns do
      column do
        panel "Mapa" do
          render partial: "admin/checkins/map_view", locals: { checkins: Checkin.all }
        end
      end

      column do
        panel "Filtros" do
        end

        panel "Métricas" do
        end
      end
    end
  end
end
