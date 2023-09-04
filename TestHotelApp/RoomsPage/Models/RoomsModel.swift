import Foundation

struct RoomsModel: Decodable{
    
    var rooms: [Room]?
    
    static var noRooms: Self{
        return RoomsModel(rooms: nil)
    }
    
}
struct Room: Decodable, Identifiable{
    
    var id: Int?
    var name: String?
    var price: Int?
    var pricePer: String?
    var peculiarities: [String]?
    var imageUrls: [String]?
    
    static var noRoom: Self{
        return Room(id: nil, name: nil, price: nil, pricePer: nil, peculiarities: nil, imageUrls: nil)
    }
    
}
