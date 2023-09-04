
import Foundation
import UIKit

protocol Coordinator: AnyObject{
    
    var navigationController: UINavigationController { set get }
    
    func start()
    
}
