class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  #App
  get '/farms' do
    farms = Farm.all
    farms.to_json(include: :beds)
  end

  #AddAFarmOrBed
  post '/farms' do
      farm = Farm.create(
        name: params[:name],
        city: params[:city],
        state: params[:state]
      )
      farm.to_json(include: :beds)
  end

  #UpdateAFarm
  patch '/farms/:id' do
    farm = Farm.find(params[:id])
    farm.update(
      name: params[:name],
      city: params[:city],
      state: params[:state]
    )
    farm.to_json(include: :beds)
  end

  #FarmTableRow
  delete '/farms/:id' do
    farm = Farm.find(params[:id])
    farm.destroy
    farm.to_json(include: :beds)
  end

  #AddAFarmOrBed
  post '/beds' do
    bed = Bed.create(
      farm_id: params[:farm_id],
      sq_ft: params[:sq_ft],
      in_use: params[:in_use],
      crop: params[:crop],
      planting_date: params[:planting_date],
      harvest_date: params[:harvest_date],
      dtm: params[:dtm]
    )
    bed.to_json(include: :farm)
  end

  #CropTableRow
  delete '/beds/:id' do
    bed = Bed.find(params[:id])
    bed.destroy
    bed.to_json(include: :farm)
  end

end
