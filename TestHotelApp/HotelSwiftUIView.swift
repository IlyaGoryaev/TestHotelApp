//
//  HotelSwiftUIView.swift
//  TestHotelApp
//
//  Created by Илья Горяев on 30.08.2023.
//

import SwiftUI

struct HotelSwiftUIView: View {
    var body: some View {
        ScrollView{
            Rectangle()
                .fill(Color.white)
                .frame(height: 530)
            Rectangle()
                .fill(Color.white)
                .frame(height: 428)
                .background(Color.white)
            Text("Hello")
        }
        .ignoresSafeArea()
        .background(Color.gray)
    }
}

struct HotelSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        HotelSwiftUIView()
    }
}
