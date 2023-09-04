//
//  ViewController.swift
//  TestHotelApp
//
//  Created by Илья Горяев on 30.08.2023.
//

import UIKit
import SwiftUI


class ViewController: UIViewController {
    
    let imageView = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()
        let controller  = UIHostingController(rootView: RoomPageSwiftUIView())
        controller.view.frame = self.view.frame
        
        addChild(controller)
        view.addSubview(controller.view)
        controller.didMove(toParent: self)
        
    }

}

