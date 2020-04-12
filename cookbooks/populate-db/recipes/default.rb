bash 'extract_module' do
  code <<-EOH
  mongoimport -c dishes -d conFusion  --file /srv/express-app/populate_database/dishes.json --jsonArray
  mongoimport -c promotions -d conFusion  --file /srv/express-app/populate_database/promotions.json --jsonArray
  mongoimport -c leaders -d conFusion  --file /srv/express-app/populate_database/leaders.json --jsonArray
    EOH
end
