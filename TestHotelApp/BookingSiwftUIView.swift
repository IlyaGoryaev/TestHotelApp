//
//  BookingSiwftUIView.swift
//  TestHotelApp
//
//  Created by Илья Горяев on 30.08.2023.
//

import SwiftUI

struct BookingSiwftUIView: View {
    var body: some View {
        ZStack{
            Color(.backGroundGray)
            ScrollView{
                
                HotelBlock()
                BookingInfoSwiftUIView(lines: [BookingInfoLineModel(id: "1",title: "Вылет из", titleName: "Санкт-Петербург"), BookingInfoLineModel(id: "2", title: "Страна, город", titleName: "Египет, Хургада"), BookingInfoLineModel(id: "3", title: "Даты", titleName: "19.09.2023 – 27.09.2023"), BookingInfoLineModel(id: "4", title: "Кол-во ночей", titleName: "7 ночей"), BookingInfoLineModel(id: "5", title: "Отель", titleName: "Steigenberger Makadi"), BookingInfoLineModel(id: "6", title: "Номер", titleName: "Стандартный с видом на бассейн или сад"), BookingInfoLineModel(id: "7", title: "Питание", titleName: "Все включено")])
                BuyerInfoSwiftUIView()
            }
        }
        
    }
}

struct BookingSiwftUIView_Previews: PreviewProvider {
    static var previews: some View {
        BookingSiwftUIView()
    }
}
