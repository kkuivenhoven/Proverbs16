Rails.application.routes.draw do
  get 'common/words'

  # get 'static_pages/help'
  get 'static_pages/proverbs1'
  get 'static_pages/proverbs4'
  get 'static_pages/proverbs5'
  get 'static_pages/proverbs7'
  get 'static_pages/proverbs16'
  get 'static_pages/proverbs18'
  get 'static_pages/proverbs19'
  get 'static_pages/proverbs20'
  get 'static_pages/proverbs21'
  get 'static_pages/proverbs27'

	root controller: :static_pages, action: :home

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
