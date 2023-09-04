//
//  HotelPageSwiftUIView.swift
//  TestHotelApp
//
//  Created by Илья Горяев on 31.08.2023.
//

import SwiftUI

struct HotelPageSwiftUIView: View {
    
    @ObservedObject var model = HotelViewModel()
    
    var applicationCoordinator: ApplicationCoordinator?
    
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
                            ZStack{
                                HotelImageSlider(pictures:[
                                    Picture(id: "1", image: UIImage(named: "HotelPhoto")!),
                                    Picture(id: "2", image: UIImage(named: "HotelPhoto")!), Picture(id: "3", image: UIImage(named: "HotelPhoto")!)])
                            }
                            
                            HStack{
                                Spacer()
                                    .frame(width: 16)
                                ZStack{
                                    RoundedRectangle(cornerRadius: 5)
                                        .fill(Color(uiColor: .lightOrangeHotel))
                                        .frame(width: 149, height: 29)
                                    HStack{
                                        Image(uiImage: UIImage(named: "Icons")!)
                                        Text(String(model.currentHotel.rating ?? 5) + " " + (model.currentHotel.rating_name ?? "No name"))
                                            .font(.custom("SF Pro Display", size: 16))
                                            .foregroundColor(Color(uiColor: .orangeHotel))
                                    }
                                    
                                }
                                Spacer()
                                    .frame(width: 16)
                            }
                            .frame(maxWidth: .infinity, alignment: .topLeading)
                            
                            
                            HStack{
                                Spacer()
                                    .frame(width: 16)
                                Text(model.currentHotel.name ?? "NameHotel")
                                    .font(
                                        Font.custom("SF Pro Display", size: 22)
                                            .weight(.medium)
                                    )
                                    .foregroundColor(.black)
                                    .frame(maxWidth: .infinity, alignment: .topLeading)
                                Spacer()
                                    .frame(width: 16)
                            }
                            .frame(maxWidth: .infinity)
                            
                            
                            HStack{
                                Spacer()
                                    .frame(width: 16)
                                Button(model.currentHotel.adress ?? "Adress"){
                                    
                                }
                                Spacer()
                                    .frame(width: 16)
                            }
                            .frame(maxWidth: .infinity, alignment: .topLeading)
                            
                            HStack(alignment: .bottom){
                                Spacer()
                                    .frame(width: 16)
                                Text("от " + String(model.currentHotel.minimal_price ?? 10000) + " ₽")
                                    .font(
                                        Font.custom("SF Pro Display", size: 30)
                                            .weight(.semibold)
                                    )
                                    .foregroundColor(.black)
                                Text("за тур с перелётом")
                                    .font(Font.custom("SF Pro Display", size: 16))
                                    .foregroundColor(Color(red: 0.51, green: 0.53, blue: 0.59))
                                Spacer()
                                    .frame(width: 16)
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            
                            Spacer()
                        }
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(12)
                        
                        
                        
                        VStack(spacing: 16){
                            Spacer()
                                .frame(width: 16)
                            HStack{
                                Spacer()
                                    .frame(width: 16)
                                Text("Об отеле")
                                    .font(
                                        Font.custom("SF Pro Display", size: 22)
                                            .weight(.medium)
                                    )
                                    .foregroundColor(.black)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                Spacer()
                                    .frame(width: 16)
                            }
                            .frame(maxWidth: .infinity)
                            
                            HStack{
                                Spacer()
                                    .frame(width: 16)
                                TagCloudView(tags:model.currentHotel.about_the_hotel?.peculiarities ?? [String]())
                                    
                            }
                            
                                
                                HStack{
                                    Spacer()
                                        .frame(width: 16)
                                    Text(model.currentHotel.about_the_hotel?.description ?? "Description")
                                        .font(Font.custom("SF Pro Display", size: 16))
                                        .foregroundColor(.black.opacity(0.9))
                                    Spacer()
                                        .frame(width: 16)
                                }
                                .frame(maxWidth: .infinity)

                            
                            
                            
                            
                            
                            HStack{
                                Spacer()
                                    .frame(width: 16)
                                VStack{
                                    ForEach(0..<3){ item in
                                        HStack{
                                            Spacer()
                                                .frame(width: 16)
                                            Image(uiImage: UIImage(named: "HappyEmoji")!)
                                            VStack(alignment: .leading){
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
                                                .frame(width: 16)
                                        }
                                        .frame(maxWidth: .infinity, minHeight: 38 + 25)
                                        
                                    }
                                    
                                    
                                }
                                .background(Color(uiColor: UIColor.backGroundGray))
                                .cornerRadius(15)
                                Spacer()
                                    .frame(width: 16)
                            }
                            .frame(maxWidth: .infinity)
                            
                            Spacer()
                        }
                        .background(.white)
                        .cornerRadius(12)
                        Spacer()
                            .frame(width: 16)
                    }
                    
                    
                }
                .ignoresSafeArea()
            }
            Button {
                
                applicationCoordinator?.openRoomsPage()
                
            } label: {
                HStack{
                    Spacer()
                        .frame(width: 16)
                    ZStack{
                        RoundedRectangle(cornerRadius: 15)
                            .frame(height: 48)
                        Text("К выбору номера")
                            .font(
                            Font.custom("SF Pro Display", size: 16)
                            .weight(.medium)
                            )
                            .kerning(0.1)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, alignment: .center)
                    }
                    Spacer()
                        .frame(width: 16)
                }
                .frame(maxWidth: .infinity)
                
            }

            
        }
    }
}
