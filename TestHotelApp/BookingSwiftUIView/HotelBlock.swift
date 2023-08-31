//
//  HotelBlock.swift
//  TestHotelApp
//
//  Created by Илья Горяев on 30.08.2023.
//

import SwiftUI

struct HotelBlock: View {
    var body: some View {
        
        ZStack{
            Color(.backGroundGray)
            RoundedRectangle(cornerRadius: 12)
                .fill(Color.white)
                .frame(height: 120)
                
            VStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 5)
                        .fill(Color(uiColor: .lightOrangeHotel))
                        .frame(width: 149, height: 29)
                        
                    Text("5 Превосходно")
                        .font(.custom("SF Pro Display", size: 16))
                        .foregroundColor(Color(uiColor: .orangeHotel))
                }
                .offset(x: -102)
                

                Text("Steigenberger Makadi")
                    .offset(x: -68)
                    .font(.custom("SF Pro Display", size: 22))
                Button("Madinat Makadi, Safaga Road, Makadi Bay, Египет") {
                    
                }
                .padding(1)
                .font(.custom("SF Pro Display", size: 14))
                .offset(x: -15)
            }
            
        }.ignoresSafeArea()
    }
}

struct HotelBlock_Previews: PreviewProvider {
    static var previews: some View {
            HotelBlock()
        
    }
}
