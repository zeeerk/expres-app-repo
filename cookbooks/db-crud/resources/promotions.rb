resource_name :mongodb_promotions

# Data to be inserted => [{"name":""},{"name":""},{"name":""}]
property :data, String, default: ''
property :query, String, default: ''
action :insert do	
    execute 'insert-to-promotions-collection' do
        user 'root'
        cwd '/tmp'
        command <<-EOH 
        mongo conFusion --eval 'db.promotions.insert(#{new_resource.data})'  && echo 'Data #{new_resource.data} Successfully inserted to Collection at #{Time.now()}' >> /srv/promotions.log
        EOH
	end
  end

  action :delete do
    execute 'delete-from-promotions-collection' do
        user 'root'
        cwd '/tmp'
        command <<-EOH 
        mongo conFusion --eval 'db.promotions.remove({#{new_resource.query}})'  && echo 'Data #{new_resource.query} Successfully Deleted from Collection at #{Time.now()}' >> /srv/promotions.log
        EOH
	end
  end

  action :update do
    execute 'update-to-promotions-collection' do
        user 'root'
        cwd '/tmp'
        command <<-EOH 
        mongo conFusion --eval 'db.promotions.update({#{new_resource.query}}, {$set:#{new_resource.data}})' && echo 'Data #{new_resource.data} Successfully Updated in Collection at #{Time.now()}' >> /srv/promotions.log
        EOH
	end
  end

action :read do 
    execute 'read-from-promotions-collection' do
        user 'root'
        cwd '/tmp'
        command <<-EOH 
        mongo conFusion --eval 'db.promotions.find({#{new_resource.query}})' && echo 'Data #{new_resource.data} Successfully Read from  Collection at #{Time.now()}' >> /srv/leaders.log
        EOH
	end
end