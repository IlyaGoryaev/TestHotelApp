import Foundation
import Combine

class RoomsPageApi{
    
    static let shared = RoomsPageApi()
    
    func fetchRoomsInfo() -> AnyPublisher<RoomsModel, Never>{
        let url = URL(string: "https://run.mocky.io/v3/f9a38183-6f95-43aa-853a-9c83cbb05ecd")
        guard let url = url else {
            return Just(RoomsModel.noRooms)
                .eraseToAnyPublisher()
        }
        return URLSession.shared.dataTaskPublisher(for: url)
            .map{ $0.data }
            .decode(type: RoomsModel.self, decoder: JSONDecoder())
            .catch({ error in Just(RoomsModel.noRooms)})
            .receive(on: RunLoop.main)
            .eraseToAnyPublisher()
    }
    
}
