//
//  BookingSiwftUIView.swift
//  TestHotelApp
//
//  Created by Илья Горяев on 30.08.2023.
//

import SwiftUI

struct BookingSiwftUIView: View {
    var body: some View {
        ZStack{
            Color(.backGroundGray)
            ScrollView{
                
                HotelBlock()
                HotelImageSlider(pictures:[
                    Picture(id: "1", image: UIImage(named: "Таранто1")!),
                    Picture(id: "2", image: UIImage(named: "Таранто2")!), Picture(id: "3", image: UIImage(named: "Таранто4")!)])
                .frame(width: 343, height: 257)
                BuyerInfoSwiftUIView()
            }
        }
        
    }
}

struct BookingSiwftUIView_Previews: PreviewProvider {
    static var previews: some View {
        BookingSiwftUIView()
    }
}
