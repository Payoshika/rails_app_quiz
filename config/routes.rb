Rails.application.routes.draw do
    post 'jobs' => 'jobs#create'
    get 'jobs/:id' => 'jobs#show'
    get 'jobs' => 'jobs#index'
end
