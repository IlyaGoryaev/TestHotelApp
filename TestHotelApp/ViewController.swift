//
//  ViewController.swift
//  TestHotelApp
//
//  Created by Илья Горяев on 30.08.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        HotelPageApi.getData { result in
            switch result{
                
            case .success(let data):
                print(data)
            case .failure(let error):
                print(error)
            }
        }
    }


}

