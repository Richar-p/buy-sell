ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      h1 "Welcome Buy&Sell's administrator !"
      h2 "#{Offer.where(validate?: false).count} offers need validation now"
    end
  end
end
