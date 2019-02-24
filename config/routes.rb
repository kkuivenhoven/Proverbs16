Rails.application.routes.draw do
  get 'common/words'

  # get 'static_pages/help'
  get 'static_pages/proverbs1'
  get 'static_pages/proverbs2'
  get 'static_pages/proverbs3'
  get 'static_pages/proverbs4'
  get 'static_pages/proverbs5'
  get 'static_pages/proverbs6'
  get 'static_pages/proverbs7'
  get 'static_pages/proverbs8'
  get 'static_pages/proverbs9'
  get 'static_pages/proverbs10'
  get 'static_pages/proverbs11'
  get 'static_pages/proverbs12'
  get 'static_pages/proverbs13'
  get 'static_pages/proverbs14'
  get 'static_pages/proverbs15'
  get 'static_pages/proverbs16'
  get 'static_pages/proverbs17'
  get 'static_pages/proverbs18'
  get 'static_pages/proverbs19'
  get 'static_pages/proverbs20'
  get 'static_pages/proverbs21'
  get 'static_pages/proverbs22'
  get 'static_pages/proverbs27'

	# root controller: :static_pages, action: :home
	root controller: :static_pages, action: :proverbs1

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
