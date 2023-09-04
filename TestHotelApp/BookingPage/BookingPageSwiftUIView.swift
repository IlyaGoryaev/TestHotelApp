//
//  BookingPageSwiftUIView.swift
//  TestHotelApp
//
//  Created by Илья Горяев on 01.09.2023.
//

import SwiftUI

struct BookingPageSwiftUIView: View {
    
    @ObservedObject var model = BookingHotelViewModel()
    
    var applicationCoordinator: ApplicationCoordinator?
    
    let columns = [ GridItem(.fixed(160)),
                    GridItem(.fixed(200))]
    
    @State var degreesRotation = 90
            
    @State var tourist = [TouristModel(id: 1, isExpanded: true), TouristModel(id: 2, isExpanded: false)]
    
    @State var buyerNumber: String = ""
    
    @State var buyerMail: String = ""
    
    @State var categories: [BookingInfoLineModel] = [BookingInfoLineModel(id: "1",title: "Вылет из", titleName: "Санкт-Петербург"), BookingInfoLineModel(id: "2", title: "Страна, город", titleName: "Египет, Хургада"), BookingInfoLineModel(id: "3", title: "Даты", titleName: "19.09.2023 – 27.09.2023"), BookingInfoLineModel(id: "4", title: "Кол-во ночей", titleName: "7 ночей"), BookingInfoLineModel(id: "5", title: "Отель", titleName: "Steigenberger Makadi"), BookingInfoLineModel(id: "6", title: "Номер", titleName: "Стандартный с видом на бассейн или сад"), BookingInfoLineModel(id: "7", title: "Питание", titleName: "Все включено")]
    
    
    
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
                Text("Бронирование")
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
                        VStack(spacing: 8){
                            Spacer()
                            HStack{
                                Spacer()
                                    .frame(width: 16)
                                ZStack{
                                    RoundedRectangle(cornerRadius: 5)
                                        .fill(Color(uiColor: .lightOrangeHotel))
                                        .frame(width: 149, height: 29)
                                    HStack{
                                        Image(uiImage: UIImage(named: "Icons")!)
                                        Text("5" + " " + "Превосходно")
                                            .font(.custom("SF Pro Display", size: 16))
                                            .foregroundColor(Color(uiColor: .orangeHotel))
                                    }
                                    
                                    
                                }
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                                                    
                                Text(model.currentBookingHotel.hotel_name ?? "HotelName")
                                .font(
                                Font.custom("SF Pro Display", size: 22)
                                .weight(.medium)
                                )
                                .foregroundColor(.black)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.leading, 16)
                            
                            Button {
                                
                            } label: {
                                Text(model.currentBookingHotel.hotel_adress ?? "HotelAdress")
                                .font(
                                Font.custom("SF Pro Display", size: 14)
                                .weight(.medium)
                                )
                                .foregroundColor(Color(red: 0.05, green: 0.45, blue: 1))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.leading, 16)
                            }

                            
                            
                                
                            
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
                                LazyVGrid(columns: columns, alignment: .leading, spacing: 20) {
                                    ForEach(categories){item in
                                        Text(item.title)
                                            .font(Font.custom("SF Pro Display", size: 16))
                                            .foregroundColor(Color(red: 0.51, green: 0.53, blue: 0.59))
                                        Text(item.titleName)
                                            .font(Font.custom("SF Pro Display", size: 16))
                                            .foregroundColor(.black)
                                            .frame(width: 203, alignment: .topLeading)
                                    }
                                }
                            }
                            
                            Spacer()
                                .frame(width: 16)
                            
                        }
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(12)
                        
                        
                        VStack(spacing: 8){
                            Spacer()
                                .frame(width: 16)
                            Text("Информация о покупателе")
                                .font(
                                Font.custom("SF Pro Display", size: 22)
                                .weight(.medium)
                                )
                                .foregroundColor(.black)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.leading, 16)
                            
                            TextFieldSwiftUIView(title: "Номер телефона", text: $buyerNumber)
                            TextFieldSwiftUIView(title: "Почта", text: $buyerMail)
                            HStack{
                                Text("Эти данные никому не передаются. После оплаты мы вышли чек на указанный вами номер и почту")
                                    .font(Font.custom("SF Pro Display", size: 14))
                                    .foregroundColor(Color(red: 0.51, green: 0.53, blue: 0.59))
                            }
                            .frame(maxWidth: .infinity)
                            
                            Spacer()
                                .frame(width: 16)
                            
                        }
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(12)
                        
                        
                        ForEach($tourist) { tourist in
                            TouristSwiftUIView(tourist: tourist)
                        }
                        
                        
                        VStack{
                            Spacer()
                                .frame(width: 13)
                            HStack{
                                Spacer()
                                    .frame(width: 16)
                                Text("Добавить туриста")
                                    .font(
                                        Font.custom("SF Pro Display", size: 22)
                                            .weight(.medium)
                                    )
                                    .foregroundColor(.black)
                                
                                Spacer()
                                Button {
                                    
                                    tourist.append(TouristModel(id: tourist.count + 1, isExpanded: false))
                                    
                                } label: {
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 6)
                                            .frame(width: 32, height: 32)
                                        Image(uiImage: UIImage(named: "Frame 609")!)
                                    }
                                }
                                Spacer()
                                    .frame(width: 16)
                            }
                            .frame(maxWidth: .infinity)
                            
                            
                            Spacer()
                                .frame(width: 13)
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
                                Text("Тур")
                                    .font(Font.custom("SF Pro Display", size: 16))
                                    .foregroundColor(Color(red: 0.51, green: 0.53, blue: 0.59))
                                Spacer()
                                Text(String(model.currentBookingHotel.tour_price ?? 0) + "₽")
                                    .font(Font.custom("SF Pro Display", size: 16))
                                    .multilineTextAlignment(.trailing)
                                    .foregroundColor(.black)
                                    .frame(width: 132, alignment: .topTrailing)
                                Spacer()
                                    .frame(width: 16)
                                
                            }
                            .frame(maxWidth: .infinity)
                            
                            HStack{
                                Spacer()
                                    .frame(width: 16)
                                Text("Топливный сбор")
                                    .font(Font.custom("SF Pro Display", size: 16))
                                    .foregroundColor(Color(red: 0.51, green: 0.53, blue: 0.59))
                                Spacer()
                                Text(String(model.currentBookingHotel.fuel_charge ?? 0) + "₽")
                                    .font(Font.custom("SF Pro Display", size: 16))
                                    .multilineTextAlignment(.trailing)
                                    .foregroundColor(.black)
                                    .frame(width: 132, alignment: .topTrailing)
                                Spacer()
                                    .frame(width: 16)
                                
                            }
                            .frame(maxWidth: .infinity)
                            
                            HStack{
                                Spacer()
                                    .frame(width: 16)
                                Text("Сервисный сбор")
                                    .font(Font.custom("SF Pro Display", size: 16))
                                    .foregroundColor(Color(red: 0.51, green: 0.53, blue: 0.59))
                                Spacer()
                                Text(String(model.currentBookingHotel.service_charge ?? 0) + "₽")
                                    .font(Font.custom("SF Pro Display", size: 16))
                                    .multilineTextAlignment(.trailing)
                                    .foregroundColor(.black)
                                    .frame(width: 132, alignment: .topTrailing)
                                Spacer()
                                    .frame(width: 16)
                                
                            }
                            .frame(maxWidth: .infinity)
                            
                            
                            
                            
                            HStack{
                                Spacer()
                                    .frame(width: 16)
                                Text("К оплате")
                                    .font(Font.custom("SF Pro Display", size: 16))
                                    .foregroundColor(Color(red: 0.51, green: 0.53, blue: 0.59))
                                Spacer()
                                Text("\(model.currentBookingHotel.tour_price ?? 0) ₽")
                                    .font(
                                    Font.custom("SF Pro Display", size: 16)
                                    .weight(.semibold)
                                    )
                                    .multilineTextAlignment(.trailing)
                                    .foregroundColor(Color(red: 0.05, green: 0.45, blue: 1))
                                    .frame(width: 132, alignment: .topTrailing)
                                Spacer()
                                    .frame(width: 16)
                            }
                            .frame(maxWidth: .infinity)
                            Spacer()
                                .frame(width: 16)
                        }
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(12)
                        
                        Spacer()
                            .frame(width: 10)
                        
                        
                    }
                }
            }
            Button {
                
                if tourist[0].birthday != ""{
                    applicationCoordinator?.openPayPage()
                }
                
                
                
            } label: {
                HStack{
                    Spacer()
                        .frame(width: 16)
                    ZStack{
                        RoundedRectangle(cornerRadius: 15)
                            .frame(maxWidth: .infinity, maxHeight: 48)
                        Text("Оплатить")
                            .font(
                            Font.custom("SF Pro Display", size: 16)
                            .weight(.medium)
                            )
                            .kerning(0.1)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                        
                    }
                    Spacer()
                        .frame(width: 16)
                }
                
            }
            
        }
    }
}

struct BookingPageSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        BookingPageSwiftUIView()
    }
}
