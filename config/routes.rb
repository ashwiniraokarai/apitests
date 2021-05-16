Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get({'status' => 'status#index'})
  get({'game_consoles' => 'game_consoles#index'})
end
