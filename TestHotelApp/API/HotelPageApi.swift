import Foundation
import Combine

class HotelPageApi{
    
    static let shared = HotelPageApi()
    
    func fetchHotelInfo() -> AnyPublisher<HotelModel, Never>{
        let url = URL(string: "https://run.mocky.io/v3/35e0d18e-2521-4f1b-a575-f0fe366f66e3")
        guard let url = url else {
            return Just(HotelModel.noHotelModel)
                .eraseToAnyPublisher()
        }
        return URLSession.shared.dataTaskPublisher(for: url)
            .map{ $0.data }
            .decode(type: HotelModel.self, decoder: JSONDecoder())
            .catch({ error in Just(HotelModel.noHotelModel)})
            .receive(on: RunLoop.main)
            .eraseToAnyPublisher()
    }
    
}
