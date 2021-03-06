require("bundler/setup")
  Bundler.require(:default)
  also_reload("lib/**/*.rb")
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }


get("/") do
  @stores = Store.all()
  @brands = Brand.all()
  erb(:index)
end
post("/stores/new") do
  name = params.fetch("name")
  store = Store.new("name"=>name)
  if store.save
    erb(:success)
else
  erb(:error)
  end
end

get("/stores/:id") do
  @store = Store.find(params.fetch("id").to_i())
  erb(:store)
end
post("/brands/new") do
  name = params.fetch("name")
  @brand = Brand.new("name" => name)
  if @brand.save()
    erb(:success)
  else
    erb(:error)
  end
end
get("/brands/:id") do
  @brand = Brand.find(params.fetch("id").to_i())
  erb(:brand)
end
get("/stores/:id/edit")do
  @store = Store.find(params.fetch("id").to_i())
  erb(:store_edit)
end
patch("/stores/:id") do
  @stores = Store.all()
  name = params.fetch("name")
  @store = Store.find(params.fetch("id").to_i())
  if   @store.update("name"=>name)
    erb(:success)
  else
    erb(:error)
  end
end
delete("/stores/:id") do
  @store = Store.find(params.fetch("id").to_i())
  @store = Store.all()
  if  @store.delete()
    erb(:success)
  end
end
get("/brands/:id/edit")do
  @brand = Brand.find(params.fetch("id").to_i())
  erb(:brand_edit)
end
patch("/brands/:id") do
  @brands = Brand.all()
  name = params.fetch("name")
  @brand = Brand.find(params.fetch("id").to_i())
  if   @brand.update("name"=>name)
    erb(:success)
  else
    erb(:error)
  end
end
delete("/brands/:id") do
  @brand = Brand.find(params.fetch("id").to_i())
  @brands = Brand.all()
  if  @brand.delete()
    erb(:success)
  end
end

post("/brands")do
brand_id = params.fetch("brand_id")
store_id = params.fetch("store_id")
@distribution = Distribution.new("brand_id"=>brand_id, "store_id"=>store_id)
if @distribution.save()
  erb(:success)
end
end
