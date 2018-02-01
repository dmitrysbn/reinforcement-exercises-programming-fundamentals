@trains = [
{train: "72C", frequency_in_minutes: 15, direction: "north"},
{train: "72D", frequency_in_minutes: 15, direction: "south"},
{train: "610", frequency_in_minutes: 5, direction: "north"},
{train: "611", frequency_in_minutes: 5, direction: "south"},
{train: "80A", frequency_in_minutes: 30, direction: "east"},
{train: "80B", frequency_in_minutes: 30, direction: "west"},
{train: "110", frequency_in_minutes: 15, direction: "north"},
{train: "111", frequency_in_minutes: 15, direction: "south"}
]

def show(train_number)
  train = @trains.find do |train_info|
    train_info[:train] == train_number
  end
  return train
end

direction_111 = show("111")[:direction]
frequency_80B = show("80B")[:frequency]
direction_610 = show("610")[:direction]

initial_array = []

@trains.each do |train|
  if train[:direction] == "north"
    initial_array << train[:train]
  end
end

@trains.each do |train|
  if train[:direction] == "east"
    initial_array << train[:train]
  end
end

# Method
def which_trains_go(trains, direction)
  array = []
  trains.each do |train|
    if train[:direction] == direction
      array << train[:train]
    end
  end
  return array
end

puts which_trains_go(@trains, "north")
puts which_trains_go(@trains, "east")

@trains[0][:first_departure_time] = 6
puts @trains
