import Foundation
import Combine

final class BookingHotelViewModel: ObservableObject{
    
    @Published var bookingHotel: String = ""
    
    @Published var currentBookingHotel = BookingHotelModel.noBookingHotelModel
    
    private var cancellableSet: Set<AnyCancellable> = []
    
    
    init(){
        $bookingHotel
            .removeDuplicates()
            .flatMap { _ in
                BookingHotelAPI.shared.fetchBookingInfo()
            }
            .assign(to: \.currentBookingHotel, on: self)
            .store(in: &self.cancellableSet)
    }
    
    
}
