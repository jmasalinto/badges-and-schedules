# Write your code here.

attendees = ["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"]

def badge_maker(name)
        return "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
    badges = []
    attendees.map do |attendee|
        badges << badge_maker(attendee)
    end
    return badges
end

def assign_rooms(attendees)
    room_assignment = []
    attendees.each_with_index {|attendee, room| room_assignment << "Hello, #{attendee}! You'll be assigned to room #{room+1}!"}
    return room_assignment
end

def printer(attendees)
    batch_badge_creator(attendees).each {|attendee| puts attendee}
    assign_rooms(attendees).each {|room| puts room}
end

