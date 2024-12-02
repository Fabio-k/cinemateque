json.name @movie_theater.name 
json.city @movie_theater.city
json.full_capacity @movie_theater.rooms.sum {|room| room.capacity}