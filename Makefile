g_engine:
	@read -p "input engine name: " name; \
	bundle exec rails plugin new $$name --mountable --skip-test-unit --dummy-path=spec/dummy

# example is below.
# http://taka.hatenadiary.com/entry/2014/05/05/Rails_Plugin%E3%81%A7Rspec%E3%82%92%E4%BD%BF%E3%81%86%E7%92%B0%E5%A2%83%E3%81%AE%E6%A7%8B%E7%AF%89%E6%96%B9%E6%B3%95
bundle:
	@read -p "input engine name: " name; \
	cd $$name && bundle install

g_model:
	@read -p "input engine name: " engine; \
	@read -p "input model name: " model; \
	@read -p "input columns attribute: " columns; \
    cd $$engine && rails g model $$model $$columns

d_model:
	@read -p "input engine name: " engine; \
	@read -p "input model name: " model; \
    cd $$engine && rails d model $$model

g_models:
	@read -p "input engine name: " engine; \
    cd $$engine && rails g model Account master_sm:references name && rails g model Email account:references name

d_models:
	@read -p "input engine name: " engine; \
    cd $$engine && rails d model Account && rails g model Email
