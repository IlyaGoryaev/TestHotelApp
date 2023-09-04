//
//  RoomPageSwiftUIView.swift
//  TestHotelApp
//
//  Created by Илья Горяев on 01.09.2023.
//

import SwiftUI

struct RoomPageSwiftUIView: View {
    
    @ObservedObject var model = RoomsViewModel()
    
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
                Text("Steigenberger Makadi")
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
            
            
            
            ZStack{
                Color(uiColor: .backGroundGray)
                
                ScrollView(showsIndicators: false){
                    Spacer()
                    VStack(spacing: 8){

                        ForEach(model.currentRooms.rooms ?? [Room]()){room in
                            VStack(spacing: 20){
                                Spacer()
                                HotelImageSlider(pictures:[
                                    Picture(id: "1", image: UIImage(named: "HotelPhoto")!),
                                    Picture(id: "2", image: UIImage(named: "HotelPhoto")!), Picture(id: "3", image: UIImage(named: "HotelPhoto")!)])
                                HStack{
                                    Spacer()
                                        .frame(width: 16)
                                    Text(room.name ?? "RoomName")
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
                                    TagCloudView(tags: room.peculiarities ?? [String]())
                                }
                                
                                
                                HStack{
                                    Spacer()
                                        .frame(width: 16)
                                    Button(action: {
                                        
                                        
                                        
                                        
                                    }, label: {
                                        HStack{
                                            Spacer()
                                            Text("Подробнее о номере")
                                                .font(
                                                Font.custom("SF Pro Display", size: 16)
                                                .weight(.medium)
                                                )
                                                .multilineTextAlignment(.center)
                                                .foregroundColor(Color(red: 0.05, green: 0.45, blue: 1))
                                            Image(uiImage: UIImage(named: "Vector 55")!)
                                            Spacer()
                                        }
                                        
                                    })
                                    .frame(width: 192, height: 29)
                                    .background(Color(red: 0.05, green: 0.45, blue: 1).opacity(0.1))
                                    .cornerRadius(5)
                                    .foregroundColor(Color.white)
                                    Spacer()
                                        .frame(width: 16)
                                    
                                }
                                .frame(maxWidth: .infinity, alignment: .leading)
                                
                                HStack{
                                    Spacer()
                                        .frame(width: 16)
                                    Text(String(room.price ?? 10000) + "₽")
                                        .font(
                                        Font.custom("SF Pro Display", size: 30)
                                        .weight(.semibold)
                                        )
                                        .foregroundColor(.black)
                                    Text(room.pricePer ?? "За 7 ночей с перелетом")
                                    .font(Font.custom("SF Pro Display", size: 16))
                                    .foregroundColor(Color(red: 0.51, green: 0.53, blue: 0.59))
                                    Spacer()
                                        .frame(width: 16)
                                }
                                .frame(maxWidth: .infinity, alignment: .leading)
                                Button {
                                    
                                    applicationCoordinator?.openBookingHotelPage()
                                    
                                } label: {
                                    HStack{
                                        Spacer()
                                            .frame(width: 16)
                                        ZStack{
                                            RoundedRectangle(cornerRadius: 15)
                                                .frame(height: 48)
                                            Text("Выбрать номер")
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
                                Spacer()
                            }
                            .frame(maxWidth: .infinity)
                            .background(Color.white)
                            .cornerRadius(12)
                        }
                                                
                    }
                    Spacer()
                }
                .ignoresSafeArea()
            }
            Spacer()
        }
    }
}

struct RoomPageSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        RoomPageSwiftUIView()
    }
}
