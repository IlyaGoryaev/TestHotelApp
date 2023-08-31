//
//  HotelPageImage.swift
//  TestHotelApp
//
//  Created by Илья Горяев on 31.08.2023.
//

import SwiftUI

struct HotelPageImage: View {
    
    let image: UIImage
    
    var body: some View {
        Image(uiImage: image)
            .resizable()
            .cornerRadius(12)
    }
}

struct HotelPageImage_Previews: PreviewProvider {
    static var previews: some View {
        
        HotelPageImage(image: UIImage(named: "Таранто1")!)
            .cornerRadius(12)
    }
}
