//
//  HotelDescriptionSwiftUi.swift
//  TestHotelApp
//
//  Created by Илья Горяев on 31.08.2023.
//

import SwiftUI

struct HotelDescriptionSwiftUi: View {
    
    let description: String
    
    var body: some View {
        ZStack{
            Color(uiColor: .backGroundGray)
                VStack(spacing: 40){
                    Text("Об отеле")
                        .frame(width: 425)
                    Text(description)
                        .font(Font.custom("SF Pro Display", size: 16))
                        .foregroundColor(.black.opacity(0.9))
                        .frame(width: 343, alignment: .topLeading)
                    Text("Leading")
                }
                .background(.white)
                .cornerRadius(12)
        }
        
    }
}

struct HotelDescriptionSwiftUi_Previews: PreviewProvider {
    static var previews: some View {
        HotelDescriptionSwiftUi(description: "Отель VIP-класса с собственными гольф полями. Высокий уровнь сервиса. Рекомендуем для респектабельного отдыха. Отель принимает гостей от 18 лет!")
    }
}
