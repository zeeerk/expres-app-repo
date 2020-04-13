mongodb_dishes 'insert-data' do
    action :insert
    data '{
        "label":"Bevarage", 
        "featured":true,
        "name":"Lassi",
        "image":"images/lassi.jpg",
        "category":"mains",
        "price":25,
        "description":"Curd + Milk/Water"
        }'
end

# mongodb_dishes 'update-data' do
#     action :update
#     query '"name": "Lassi"'
#     data '{
#         "label":"Bevarage", 
#         "featured":true,
#         "name":"Lassi",
#         "image":"images/lassi.jpg",
#         "category":"mains",
#         "price":25,
#         "description":"Curd + Milk/Water"
#         }'
# end

# mongodb_dishes 'read-data' do
#     action :read
#     query '"name": "Lassi"'
# end

# mongodb_dishes 'delete-data' do
#     action :delete
#     query '"name": "Lassi"'
# end

# mongodb_leaders 'insert-data' do
#     action :insert
#     data '{
#         "designation":"Chief Epicurious Officer",
#         "abbr":"CEO",
#         "featured":false,
#         "name":"Adeel Ahmed",
#         "image":"images/abc.jpg",
#         "description":"Adeel"
#         }'
# end

# mongodb_leaders 'update-data' do
#     action :update
#     query '"name": "Adeel Ahmed"'
#    data '{
#     "designation":"Chief Epicurious Officer",
#     "abbr":"CEO",
#     "featured":false,
#     "name":"Adeel Ahmed Zeerak",
#     "image":"images/abc.jpg",
#     "description":"Adeel"
#     }'
# end

# mongodb_leaders 'read-data' do
#     action :read
#     query '"name": "Adeel Ahmed"'
# end

# mongodb_leaders 'delete-data' do
#     action :delete
#     query '"name": "Adeel Ahmed"'
# end



# mongodb_promotions 'insert-data' do
#     action :insert
#     data '{
#         "label":"Old",
#         "featured":true,
#         "name":"Marriage",
#         "image":"images/marriage.jpg",
#         "price":20000,
#         "description":"Marriage"
#         }'
# end

# mongodb_promotions 'update-data' do
#     action :update
#     query '"name": "Marriage"'
#    data '{
#     "label":"Old",
#     "featured":true,
#     "name":"Marriage",
#     "image":"images/marriage.jpg",
#     "price":20000,
#     "description":"Marriage"
#     }'
# end

# mongodb_promotions 'read-data' do
#     action :read
#     query '"name": "Marriage"'
# end

# mongodb_promotions 'delete-data' do
#     action :delete
#     query '"name": "Marriage"'
# end

# db_data 'Update-DB' do
#     collection_type 'promotions'
#     action :update
#     query '"name" : "Marriage"'
#     data '{
#             "label":"Old",
#             "featured":true,
#             "name":"Marriage",
#             "image":"images/marriage.jpg",
#             "price":40000,
#             "description":"Marriage"
#             }'
# end