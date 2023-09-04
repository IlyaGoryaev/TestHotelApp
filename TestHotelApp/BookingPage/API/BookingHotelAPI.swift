import Foundation
import Combine

class BookingHotelAPI{
    
    static var shared = BookingHotelAPI()
    
    func fetchBookingInfo() -> AnyPublisher<BookingHotelModel, Never>{
        
        let url = URL(string: "https://run.mocky.io/v3/e8868481-743f-4eb2-a0d7-2bc4012275c8")
        guard let url = url else {
            return Just(BookingHotelModel.noBookingHotelModel)
                .eraseToAnyPublisher()
        }
        return URLSession.shared.dataTaskPublisher(for: url)
            .map{ $0.data }
            .decode(type: BookingHotelModel.self, decoder: JSONDecoder())
            .catch({ error in Just(BookingHotelModel.noBookingHotelModel)})
            .receive(on: RunLoop.main)
            .eraseToAnyPublisher()
        
    }
    
}
