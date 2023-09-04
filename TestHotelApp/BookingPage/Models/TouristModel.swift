import Foundation
import SwiftUI

struct TouristModel: Identifiable{
    
    var id: Int
    var firstName = String()
    var lastName = String()
    var birthday = String()
    var citizenship = String()
    var passpostNumber = String()
    var passportValidity = String()
    var isExpanded: Bool
    var degreesRotation = 90
    
}
