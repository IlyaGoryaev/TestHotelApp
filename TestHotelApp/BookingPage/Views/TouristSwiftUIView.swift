//
//  TouristSwiftUIView.swift
//  TestHotelApp
//
//  Created by Илья Горяев on 04.09.2023.
//

import SwiftUI

struct TouristSwiftUIView: View {
    
    @Binding var tourist: TouristModel
    
    var body: some View {
        VStack{
            
            Spacer()
                .frame(width: 13)
            
            HStack{
                Spacer()
                    .frame(width: 16)
                Text(String(tourist.id))
                    .font(
                    Font.custom("SF Pro Display", size: 22)
                    .weight(.medium)
                    )
                    .foregroundColor(.black)
                Spacer()
                Button {
                    
                    tourist.degreesRotation -= 180
                    
                    tourist.isExpanded = !tourist.isExpanded
                    
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 6)
                            .frame(width: 32, height: 32)
                            .foregroundColor(Color(red: 0.05, green: 0.45, blue: 1).opacity(0.1))
                            .cornerRadius(6)
                        Image(uiImage: UIImage(named: "Vector 55")!)
                            .rotationEffect(.degrees(Double(tourist.degreesRotation)))
                    }

                }
                Spacer()
                    .frame(width: 16)

            }
            .frame(maxWidth: .infinity)
            
            Spacer()
                .frame(width: 20)
            
            
            TextFieldSwiftUIView(title: "Имя", text: $tourist.firstName)
            TextFieldSwiftUIView(title: "Фамилия", text: $tourist.lastName)
            TextFieldSwiftUIView(title: "Дата рождения", text: $tourist.birthday)
            TextFieldSwiftUIView(title: "Гражданство", text: $tourist.citizenship)
            TextFieldSwiftUIView(title: "Номер загранпаспорта", text: $tourist.passpostNumber)
            TextFieldSwiftUIView(title: "Срок действия загранпаспорта", text: $tourist.passportValidity)
            
            
            Spacer()
                .frame(width: 13)
            
        }
        .frame(maxWidth: .infinity, maxHeight: tourist.isExpanded ? 500 : 50, alignment: .top)
        .background(Color.white)
        .cornerRadius(12)
        .clipped()
    }
}
