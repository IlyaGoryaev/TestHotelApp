//
//  PaySwiftUIView.swift
//  TestHotelApp
//
//  Created by Илья Горяев on 31.08.2023.
//

import SwiftUI

struct PaySwiftUIView: View {
    
    var applicationCoordinator: ApplicationCoordinator?

    
    var body: some View {
        
        
        
        VStack{
            HStack{
                Spacer()
                    .frame(width: 24)
                Button {
                    
                    applicationCoordinator?.dismiss()
                    
                } label: {
                    Image(uiImage: UIImage(named: "vector-3")!)
                }
                Spacer()
                Text("Заказ оплачен")
                    .font(
                        Font.custom("SF Pro Display", size: 18)
                            .weight(.medium)
                    )
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
                Spacer()
                    .frame(width: 24)
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
            Button {
                
                applicationCoordinator?.openMainHotelPage()
                
            } label: {
                ZStack{
                    RoundedRectangle(cornerRadius: 15)
                        .frame(width: 425 - 32, height: 48)
                    Text("Супер!")
                        .font(
                        Font.custom("SF Pro Display", size: 16)
                        .weight(.medium)
                        )
                        .kerning(0.1)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .frame(width: 425 - 32, alignment: .center)
                }
            }
        }
        
        
        
        
    }
}

struct PaySwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        PaySwiftUIView()
    }
}
