//
//  HotelPageSwiftUIView.swift
//  TestHotelApp
//
//  Created by Илья Горяев on 31.08.2023.
//

import SwiftUI

struct HotelPageSwiftUIView: View {
    
    @ObservedObject var model = HotelViewModel()
    
    var body: some View {
        
        VStack{
            Text("Отель")
                .font(
                Font.custom("SF Pro Display", size: 18)
                .weight(.medium)
                )
                .multilineTextAlignment(.center)
                .foregroundColor(.black)
            
            ZStack{
                Color(uiColor: .backGroundGray)
                
                
                
                ScrollView(showsIndicators: false){
                    
                    
                    VStack(spacing: 8){
                        
                        VStack(spacing: 20){
                            Spacer()
                            HotelImageSlider(pictures:[
                                Picture(id: "1", image: UIImage(named: "HotelPhoto")!),
                                Picture(id: "2", image: UIImage(named: "HotelPhoto")!), Picture(id: "3", image: UIImage(named: "HotelPhoto")!)])
                            HStack{
                                ZStack{
                                    RoundedRectangle(cornerRadius: 5)
                                        .fill(Color(uiColor: .lightOrangeHotel))
                                        .frame(width: 149, height: 29)
                                    Text(String(model.currentHotel.rating ?? 5) + " " + (model.currentHotel.rating_name ?? "No name"))
                                        .font(.custom("SF Pro Display", size: 16))
                                        .foregroundColor(Color(uiColor: .orangeHotel))
                                }
                            }
                            .frame(width: 425 - 32, alignment: .topLeading)
                            
                            Text(model.currentHotel.name ?? "NameHotel")
                                .font(
                                    Font.custom("SF Pro Display", size: 22)
                                        .weight(.medium)
                                )
                                .foregroundColor(.black)
                                .frame(width: 425 - 32, alignment: .topLeading)
                            
                            Button(model.currentHotel.adress ?? "Adress"){
                                
                            }
                            .frame(width: 425 - 32, alignment: .topLeading)
                            
                            HStack{
                                Text("от " + String(model.currentHotel.minimal_price ?? 10000))
                                    .font(
                                        Font.custom("SF Pro Display", size: 30)
                                            .weight(.semibold)
                                    )
                                    .foregroundColor(.black)
                                Text("за тур с перелётом")
                                    .font(Font.custom("SF Pro Display", size: 16))
                                    .foregroundColor(Color(red: 0.51, green: 0.53, blue: 0.59))
                            }
                            .frame(width: 425 - 32, alignment: .topLeading)
                            
                            Spacer()
                        }
                        .frame(width: 425)
                        .background(Color.white)
                        .cornerRadius(12)
                        
                        VStack(spacing: 16){
                            Text("Об отеле")
                                .font(
                                    Font.custom("SF Pro Display", size: 22)
                                        .weight(.medium)
                                )
                                .foregroundColor(.black)
                                .frame(width: 425 - 32, alignment: .topLeading)
                                .padding(16)
                            Text(model.currentHotel.about_the_hotel?.description ?? "Description")
                                .font(Font.custom("SF Pro Display", size: 16))
                                .foregroundColor(.black.opacity(0.9))
                                .frame(width: 425 - 32, alignment: .topLeading)
                            VStack{
                                ForEach(0..<3){ item in
                                    HStack{
                                        Spacer()
                                        Image(uiImage: UIImage(named: "HappyEmoji")!)
                                        Spacer()
                                        VStack{
                                            Text("Удобства")
                                                .font(
                                                    Font.custom("SF Pro Display", size: 16)
                                                        .weight(.medium)
                                                )
                                                .foregroundColor(Color(red: 0.17, green: 0.19, blue: 0.21))
                                                .frame(alignment: .topLeading)
                                            Text("Самое необходимое")
                                                .font(
                                                    Font.custom("SF Pro Display", size: 14)
                                                        .weight(.medium)
                                                )
                                                .foregroundColor(Color(red: 0.51, green: 0.53, blue: 0.59))
                                            
                                        }
                                        Spacer()
                                        Image(uiImage: UIImage(named: "vector-3")!)
                                            .rotationEffect(.degrees(-180))
                                        Spacer()
                                    }
                                    .frame(width: 425 - 32, height: 38 + 25)
                                    
                                }
                                
                            }
                            .background(Color(uiColor: UIColor.backGroundGray))
                            .cornerRadius(15)
                            Spacer(minLength: 16)
                        }
                        .background(.white)
                        .cornerRadius(12)
                        Spacer()
                    }
                    
                    
                }
                .ignoresSafeArea()
            }
            Button("К выбору номера"){
                
            }
            .buttonStyle(.borderedProminent)
            .frame(width: 425 - 32, height: 48)
            .background(Color.blue)
            .cornerRadius(15)
            .foregroundColor(Color.white)
            
        }
    }
}
struct HotelPageSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        HotelPageSwiftUIView()
    }
}
