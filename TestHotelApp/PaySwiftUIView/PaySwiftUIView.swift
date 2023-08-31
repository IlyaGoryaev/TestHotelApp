//
//  PaySwiftUIView.swift
//  TestHotelApp
//
//  Created by Илья Горяев on 31.08.2023.
//

import SwiftUI

struct PaySwiftUIView: View {
    var body: some View {
        
        
        VStack{
            HStack{
                Image("vector-3")
                    .offset(x: 30)
                Spacer()
                Text("Заказ оплачен")
                    .font(
                        Font.custom("SF Pro Display", size: 18)
                            .weight(.medium)
                    )
                    .multilineTextAlignment(.center)
                Spacer()
            }
            
            Spacer()
            
            ZStack{
                Circle()
                    .fill(Color(uiColor: .backGroundGray))
                    .frame(width: 92, height: 92)
                Image("Party Popper")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 44, height: 44)
                    .clipped()
            }
            
            Text("Ваш заказ принят в работу")
                .font(
                    Font.custom("SF Pro Display", size: 22)
                        .weight(.medium)
                )
            Text("Подтверждение заказа №104893 может занять некоторое время (от 1 часа до суток). Как только мы получим ответ от туроператора, вам на почту придет уведомление.")
                .foregroundColor(Color(uiColor: .gray))
                .multilineTextAlignment(.center)
                .font(.custom("SF Pro Display", size: 16))
                .frame(width: 329)
            Spacer()
            ZStack{
                
                Button("Супер!"){
                    
                }
                .buttonStyle(.borderedProminent)
                .frame(width: 343, height: 48)
                .background(Color.blue)
                .cornerRadius(15)
                .foregroundColor(Color.white)
            }
        }
        
        
        
        
    }
}

struct PaySwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        PaySwiftUIView()
    }
}
