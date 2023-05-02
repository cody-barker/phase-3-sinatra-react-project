class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get '/farms' do
    farms = Farm.all
    farms.to_json
  end

  post '/farms' do
    farm = Farm.create(
      name: params[:name],
      city: params[:city],
      state: params[:state]
    )
    farm.to_json
  end

  patch '/farms/:id' do
    farm = Farm.find(params[:id])
    farm.update(
      name: params[:name],
      city: params[:city],
      state: params[:state]
    )
    farm.to_json
  end

  delete '/farms/:id' do
    farm = Farm.find(params[:id])
    farm.destroy
    farm.to_json
  end

  get '/beds' do
    beds = Bed.all
    beds.to_json
  do

  post '/beds' do
    bed = Bed.create(
      sq_ft: params[:sq_ft],
      in_use: params[:in_use],
      crop: params[:crop],
      planting_date: params[:planting_date],
      harvest_date: params[harvest_date],
      dtm: params[dtm]
    )
    bed.to_json
  end

  patch '/beds/:id' do
    bed = Bed.find(params[:id])
    bed.update(
      sq_ft: params[:sq_ft],
      in_use: params[:in_use],
      crop: params[:crop],
      planting_date: params[:planting_date],
      harvest_date: params[harvest_date],
      dtm: params[dtm]
    )
    bed.to_json
  end

  delete '/beds/:id' do
    bed = Bed.find(params[:id])
    bed.destroy
    bed.to_json
  end

end
