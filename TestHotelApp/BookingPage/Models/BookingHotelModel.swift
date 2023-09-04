import Foundation

struct BookingHotelModel: Identifiable, Decodable{
    
    var id: Int?
    var hotel_name: String?
    var hotel_adress: String?
    var horating: Int?
    var rating_name: String?
    var departure: String?
    var arrival_country: String?
    var tour_date_start: String?
    var tour_date_stop: String?
    var number_of_nights: Int?
    var room: String?
    var nutrition: String?
    var tour_price: Int?
    var fuel_charge: Int?
    var service_charge: Int?
    
    static var noBookingHotelModel: Self{
        return BookingHotelModel(id: nil, hotel_name: nil, hotel_adress: nil, horating: nil, rating_name: nil, departure: nil, arrival_country: nil, tour_date_start: nil, tour_date_stop: nil, number_of_nights: nil, room: nil, nutrition: nil, tour_price: nil, fuel_charge: nil, service_charge: nil)
    }
    
}
