Rails.application.routes.draw do
  root "top#index"
  #あとでrootをフレンズコントローラーのindexアクションにする

  resources :friends do 
	  resources :telephones
	end	

end
