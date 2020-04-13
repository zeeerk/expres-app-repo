resource_name :mongodb_leaders

# Data to be inserted => [{"name":""},{"name":""},{"name":""}]
property :data, String, default: ''
property :query, String, default: ''
action :insert do	
    execute 'insert-to-leaders-collection' do
        user 'root'
        cwd '/tmp'
        command <<-EOH 
        mongo conFusion --eval 'db.leaders.insert(#{new_resource.data})' && echo 'Data #{new_resource.data} Successfully inserted to Collection at #{Time.now()}' >> /srv/leaders.log
        EOH
	end
  end

  action :delete do
    execute 'delete-from-leaders-collection' do
        user 'root'
        cwd '/tmp'
        command <<-EOH 
        mongo conFusion --eval 'db.leaders.remove({#{new_resource.query}})' && echo 'Data #{new_resource.query} Successfully Deleted from Collection at #{Time.now()}' >> /srv/leaders.log
        EOH
	end
  end

  action :update do
    execute 'update-to-leaders-collection' do
        user 'root'
        cwd '/tmp'
        command <<-EOH 
        mongo conFusion --eval 'db.leaders.update({#{new_resource.query}}, {$set:#{new_resource.data}})' && echo 'Data #{new_resource.data} Successfully Updated in Collection at #{Time.now()}' >> /srv/leaders.log
        EOH
	end
  end

action :read do 
    execute 'read-from-leaders-collection' do
        user 'root'
        cwd '/tmp'
        command <<-EOH 
        mongo conFusion --eval 'db.leaders.find({#{new_resource.query}})' && echo 'Data #{new_resource.data} Successfully Read from  Collection at #{Time.now()}' >> /srv/leaders.log
        EOH
	end
end