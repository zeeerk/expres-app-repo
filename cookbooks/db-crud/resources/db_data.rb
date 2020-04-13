resource_name :db_data

# Data to be inserted => [{"name":""},{"name":""},{"name":""}]
property :data, String, default: ''
property :query, String, default: ''
property :collection_type, String, default: ''

action :insert do
case new_resource.collection_type 
    when 'dishes'
        mongodb_dishes 'Insert Record' do
            # Add Parameters Heres
            action :insert
            data new_resource.data
        end
    when 'leaders'
        mongodb_leaders 'Insert Record' do
            # Add Parameters Heres
            action :insert
            data new_resource.data
        end
    when 'promotions'
        mongodb_promotions 'Insert Record' do
            # Add Parameters Heres
            action :insert
            data new_resource.data
        end
    end
end

action :update do
    case new_resource.collection_type 
        when 'dishes'
            mongodb_dishes 'Update Record' do
                # Add Parameters Heres
                action :update
                data new_resource.data
                query new_resource.query
            end
        when 'leaders'
            mongodb_leaders 'Update Record' do
                # Add Parameters Heres
                action :update
                data new_resource.data
                query new_resource.query
            end
        when 'promotions'
            mongodb_promotions 'Update Record' do
                # Add Parameters Heres
                action :update
                data new_resource.data
                query new_resource.query
            end
        end
    end

action :delete do
case new_resource.collection_type 
    when 'dishes'
        mongodb_dishes 'Delete Record' do
            # Add Parameters Heres
            action :delete
            data new_resource.data
            query new_resource.query
        end
    when 'leaders'
        mongodb_leaders 'Delete Record' do
            # Add Parameters Heres
            action :delete
            data new_resource.data
            query new_resource.query
        end
    when 'promotions'
        mongodb_promotions 'Delete Record' do
            # Add Parameters Heres
            action :delete
            data new_resource.data
            query new_resource.query
        end
    end
end

action :read do
case new_resource.collection_type 
    when 'dishes'
        mongodb_dishes 'Read Record' do
            # Add Parameters Heres
            action :read
            data new_resource.data
            query new_resource.query
        end
    when 'leaders'
        mongodb_leaders 'Read Record' do
            # Add Parameters Heres
            action :read
            data new_resource.data
            query new_resource.query
        end
    when 'promotions'
        mongodb_promotions 'Read Record' do
            # Add Parameters Heres
            action :read
            data new_resource.data
            query new_resource.query
        end
    end
end