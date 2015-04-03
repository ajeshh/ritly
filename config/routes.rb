Rails.application.routes.draw do
    root "homes#index"
    resources :urls #TODO: restrict this to just :create, :new and :show

    # THINK: what does :code in these URL paths do? What does rake routes show?
    get '/:code', to: 'urls#redirector'
    get '/:code/preview', to: 'urls#preview'
end

#   Prefix Verb   URI Pattern              Controller#Action
#     root GET    /                        home#index
#     urls GET    /urls(.:format)          urls#index
#          POST   /urls(.:format)          urls#create
#  new_url GET    /urls/new(.:format)      urls#new
# edit_url GET    /urls/:id/edit(.:format) urls#edit
#      url GET    /urls/:id(.:format)      urls#show
#          PATCH  /urls/:id(.:format)      urls#update
#          PUT    /urls/:id(.:format)      urls#update
#          DELETE /urls/:id(.:format)      urls#destroy
#          GET    /:code(.:format)         urls#redirectors
#          GET    /:code/preview(.:format) urls#preview