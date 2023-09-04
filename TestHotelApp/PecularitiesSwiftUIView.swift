//
//  PecularitiesSwiftUIView.swift
//  TestHotelApp
//
//  Created by Илья Горяев on 03.09.2023.
//

import SwiftUI


struct TestTagCloudView : View {
    var body: some View {
        VStack {
            Text("Header").font(.largeTitle)
            TagCloudView(tags: ["Ninetendo", "XBox", "PlayStation", "PlayStation 2", "PlayStation 3", "PlayStation 4"])
            Text("Some other text")
            Divider()
            Text("Some other cloud")
            TagCloudView(tags: ["Apple", "Google", "Amazon", "Microsoft", "Oracle", "Facebook"])
        }
    }
}


struct PecularitiesSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        TestTagCloudView()
    }
}
