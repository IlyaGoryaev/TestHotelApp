import Combine
import Foundation

final class HotelViewModel: ObservableObject{
        
    @Published var hotel: String = ""
    
    @Published var currentHotel = HotelModel.noHotelModel
    
    private var cancellableSet: Set<AnyCancellable> = []
    
    
    init(){
        $hotel
            .removeDuplicates()
            .flatMap { _ in
                HotelPageApi.shared.fetchHotelInfo()
            }
            .assign(to: \.currentHotel, on: self)
            .store(in: &self.cancellableSet)
    }
}
