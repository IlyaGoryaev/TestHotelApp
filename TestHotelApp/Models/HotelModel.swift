import Foundation

struct HotelModel: Decodable{
    
    var id: Int
    var name: String
    var adress: String
    var minimal_price: Int
    var price_for_it: String
    var rating: Int
    var rating_name: String
    var image_urls: [String]
    var about_the_hotel: AboutHotelModel
    
}

struct AboutHotelModel: Decodable{
    
    var description: String
    var peculiarities: [String]
    
}
