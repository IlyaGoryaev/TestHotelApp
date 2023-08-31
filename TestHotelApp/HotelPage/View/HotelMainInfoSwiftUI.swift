//
//  HotelMainInfoSwiftUI.swift
//  TestHotelApp
//
//  Created by Илья Горяев on 31.08.2023.
//

import SwiftUI

struct HotelMainInfoSwiftUI: View {
    
    let name: String
    
    let adress: String
    
    let minimalPrice: String
    
    let rating: String
    
    let ratingName: String
    
    var body: some View {
        ZStack{
            Color(uiColor: .backGroundGray)
            RoundedRectangle(cornerRadius: 12)
                .fill(Color.white)
                .frame(height: 429)
            VStack(spacing: 20){
                Image(uiImage: UIImage(named: "HotelPhoto")!)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 343, height: 257)
                    .cornerRadius(15)
                    .clipped()
                ZStack{
                    RoundedRectangle(cornerRadius: 5)
                        .fill(Color(uiColor: .lightOrangeHotel))
                        .frame(width: 149, height: 29)
                    Text("\(rating) \(ratingName)")
                        .font(.custom("SF Pro Display", size: 16))
                        .foregroundColor(Color(uiColor: .orangeHotel))
                }
                Text(name)
                    .font(
                    Font.custom("SF Pro Display", size: 22)
                    .weight(.medium)
                    )
                    .foregroundColor(.black)
                    .frame(width: 343, alignment: .topLeading)
                Button(adress){
                    
                }
                HStack{
                    Text("от \(minimalPrice)")
                        .font(
                        Font.custom("SF Pro Display", size: 30)
                        .weight(.semibold)
                        )
                        .foregroundColor(.black)
                    Text("за тур с перелётом")
                        .font(Font.custom("SF Pro Display", size: 16))
                        .foregroundColor(Color(red: 0.51, green: 0.53, blue: 0.59))
                }
                .frame(alignment: .topLeading)
            }
        }
    }
}

struct HotelMainInfoSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        HotelMainInfoSwiftUI(name: "Steigenberger Makadi", adress: "Madinat Makadi, Safaga Road, Makadi Bay, Египет", minimalPrice: "134 673", rating: "5", ratingName: "Превосходно")
    }
}
