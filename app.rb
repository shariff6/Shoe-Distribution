require("bundler/setup")
  Bundler.require(:default)
  also_reload("lib/**/*.rb")
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }


get("/") do
  @stores = Store.all()
  @brands = Brand.all()
  erb(:index)
end
post("/stores") do
  name = params.fetch("name")
  store = Store.new("name"=>name)
  if store.save.to_scd
    erb(:success)
else
  erb(:error)
  end
end
