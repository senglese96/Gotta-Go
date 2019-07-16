@restrooms.each do |restroom|
    json.set! restroom.id do
        json.partial! 'api/restrooms/restroom', restroom: restroom
    end
end