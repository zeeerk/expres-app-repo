resource_name :mongodb_dishes

# Data to be inserted => [{"name":""},{"name":""},{"name":""}]
property :data, String, default: ''
property :query, String, default: ''
action :insert do	
    execute 'insert-to-dishes-collection' do
        user 'root'
        cwd '/tmp'
        command <<-EOH 
        mongo conFusion --eval 'db.dishes.insert(#{new_resource.data})' && echo 'Data #{new_resource.data} Successfully inserted to Collection at #{Time.now()}' >> /srv/dishes.log
        EOH
    end
  end

  action :delete do
    execute 'delete-from-dishes-collection' do
        user 'root'
        cwd '/tmp'
        command <<-EOH 
        mongo conFusion --eval 'db.dishes.remove({#{new_resource.query}})' && echo 'Data #{new_resource.query} Successfully Deleted from Collection at #{Time.now()}' >> /srv/dishes.log
        EOH
	end
  end

  action :update do
    execute 'update-to-dishes-collection' do
        user 'root'
        cwd '/tmp'
        command <<-EOH 
        mongo conFusion --eval 'db.dishes.update({#{new_resource.query}}, {$set:#{new_resource.data}})' && echo 'Data #{new_resource.data} Successfully Updated in Collection at #{Time.now()}' >> /srv/dishes.log
        EOH
	end
  end

action :read do 
    execute 'read-from-dishes-collection' do
        user 'root'
        cwd '/tmp'
        command <<-EOH 
        mongo conFusion --eval 'db.dishes.find({#{new_resource.query}})' && echo 'Data #{new_resource.data} Successfully read from Collection at #{Time.now()}' >> /srv/dishes.log
        EOH
	end
end