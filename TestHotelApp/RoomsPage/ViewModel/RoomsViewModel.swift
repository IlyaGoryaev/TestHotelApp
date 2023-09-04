import Foundation
import Combine

final class RoomsViewModel: ObservableObject{
    
    @Published var rooms: String = ""
    
    @Published var currentRooms = RoomsModel.noRooms
    
    private var cancellableSet: Set<AnyCancellable> = []
    
    
    init(){
        $rooms
            .removeDuplicates()
            .flatMap { _ in
                RoomsPageApi.shared.fetchRoomsInfo()
            }
            .assign(to: \.currentRooms, on: self)
            .store(in: &self.cancellableSet)
    }
    
}
