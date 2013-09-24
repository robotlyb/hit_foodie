HitFoodie::Application.routes.draw do
  get "weixins/show"

  get "weixins/create"

  resource :weixin
end
