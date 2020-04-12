application '/srv/express-app' do
	git '/srv/express-app' do
		repository 'https://github.com/mnazir23/conFusionServer.git'
	end
	npm_install
	npm_start
end