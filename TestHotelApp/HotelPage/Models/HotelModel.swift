import Foundation

struct HotelModel: Decodable, Identifiable{
    
    var id: Int?
    var name: String?
    var adress: String?
    var minimal_price: Int?
    var price_for_it: String?
    var rating: Int?
    var rating_name: String?
    var image_urls: [String]?
    var about_the_hotel: AboutHotelModel?
    
    static var noHotelModel: Self{
        return HotelModel(id: nil, name: nil, adress: nil, minimal_price: nil, price_for_it: nil, rating: nil, rating_name: nil, image_urls: nil, about_the_hotel: nil)
    }
    
}

struct AboutHotelModel: Decodable{
    
    var description: String?
    var peculiarities: [String]?
    
}
