//
//  TextFieldSwiftUIView.swift
//  TestHotelApp
//
//  Created by Илья Горяев on 01.09.2023.
//

import SwiftUI

struct TextFieldSwiftUIView: View {
    
    var title: String
    @Binding var text: String
    
    init(title: String, text: Binding<String>) {
        self.title = title
        self._text = text
    }
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .fill(Color(red: 0.96, green: 0.96, blue: 0.98))
                .frame(maxWidth: .infinity, minHeight: 52)
                .padding(.leading, 16)
                .padding(.trailing, 16)
            Text(title)
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(Font.custom("SF Pro Display", size: 17))
                .kerning(0.75)
                .foregroundColor(Color(red: 0.66, green: 0.67, blue: 0.72))
                .offset(y: text.isEmpty ? 0 : -16)
                .scaleEffect(text.isEmpty ? 1 : 0.8, anchor: .leading)
                .padding(.leading, 32)
            TextField("", text: $text)
                .offset(y: text.isEmpty ? 0 : 8)
                .frame(maxWidth: .infinity)
                .padding(.leading, 32)
                .padding(.trailing, 32)
        }
        
    }
}
