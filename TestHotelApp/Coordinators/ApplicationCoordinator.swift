import SwiftUI
import UIKit


class ApplicationCoordinator: Coordinator{
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        
        var view = HotelPageSwiftUIView()
        view.applicationCoordinator = self
        let viewController = UIHostingController(rootView: view)
        navigationController.pushViewController(viewController, animated: false)
        
    }
    
    func openRoomsPage(){
        
        var view = RoomPageSwiftUIView()
        view.applicationCoordinator = self
        let viewController = UIHostingController(rootView: view)
        navigationController.pushViewController(viewController, animated: true)
        
    }
    
    func dismiss(){
        
        navigationController.popViewController(animated: true)
    }
    
    func openBookingHotelPage(){
        
        var view = BookingPageSwiftUIView()
        view.applicationCoordinator = self
        let viewController = UIHostingController(rootView: view)
        navigationController.pushViewController(viewController, animated: true)
        
    }
    
    func openPayPage(){
        var view = PaySwiftUIView()
        view.applicationCoordinator = self
        let viewController = UIHostingController(rootView: view)
        navigationController.pushViewController(viewController, animated: true)
        
    }
    
    func openMainHotelPage(){
        
        navigationController.viewControllers.removeLast()
        navigationController.viewControllers.removeLast()
        navigationController.viewControllers.removeLast()
        
    }
    
}
