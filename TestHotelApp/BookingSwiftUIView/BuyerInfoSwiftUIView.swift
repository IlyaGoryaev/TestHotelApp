//
//  BuyerInfoSwiftUIView.swift
//  TestHotelApp
//
//  Created by Илья Горяев on 31.08.2023.
//

import SwiftUI

struct BuyerInfoSwiftUIView: View {
    @State private var username: String = ""
    var body: some View {
        ZStack{
            Color(.backGroundGray)
            RoundedRectangle(cornerRadius: 12)
                .fill(Color.white)
                .frame(height: 232)
            VStack{
                Text("Информация о покупателе")
                    .offset(x: -30, y: -10)
                    .font(.custom("SF Pro Display", size: 22))
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color(uiColor: .backGroundGray))
                        .frame(width: 343, height: 52)
                    VStack{
                        Text("Номер телефона")
                            .font(.custom("SF Pro Display", size: 12))
                            .offset(x: -100)
                        TextField("UserName", text: $username)
                            .frame(width: 343)
                    }
                    
                }
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color(uiColor: .backGroundGray))
                        .frame(width: 343, height: 52)
                    VStack{
                        Text("Номер телефона")
                            .font(.custom("SF Pro Display", size: 12))
                            .offset(x: -100)
                        TextField("UserName", text: $username)
                            .frame(width: 343)
                    }
                    
                }
                
                Text("Эти данные никому не передаются. После оплаты мы вышли чек на указанный вами номер и почту")
                    .font(.custom("SF Pro Display", size: 14))
                    .frame(width: 343)
            }
            
            
        }
    }
}

struct BuyerInfoSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        BuyerInfoSwiftUIView()
    }
}
