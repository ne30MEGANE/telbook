Rails.application.routes.draw do
  root "friends#index"
  #あとでrootをフレンズコントローラーのindexアクションにする

  resources :friends do 
	  resources :telephones
	end	

end
