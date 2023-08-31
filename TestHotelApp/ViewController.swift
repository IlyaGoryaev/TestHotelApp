//
//  ViewController.swift
//  TestHotelApp
//
//  Created by Илья Горяев on 30.08.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let imageView = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
//        HotelPageApi.getData { result in
//            switch result{
//            case .success(let data):
//                print(data.image_urls[0])
//                HotelPageApi.getImage(url: data.image_urls[2]) { result in
//                    switch result{
//
//                    case .success(let image):
//                        self.imageView.image = image
//                    case .failure(let error):
//                        print(error)
//                    }
//                }
//            case .failure(let error):
//                print(error)
//            }
//        }
    }

}

