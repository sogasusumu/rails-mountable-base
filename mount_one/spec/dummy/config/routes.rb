Rails.application.routes.draw do
  mount MountOne::Engine, at: '/mount_one'
end
