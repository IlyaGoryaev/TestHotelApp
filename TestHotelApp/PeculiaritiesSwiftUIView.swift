
import SwiftUI

struct PeculiaritiesSwiftUIView: View {
    
    
    var stringArray: [String] = ["fko43if", "fij34jf43", "r43", "fiur4fij34ijfio43jiofjio3"]
    
    var body: some View {
        HStack(spacing: 8){
            ForEach(stringArray, id: \.self){ item in
                HStack{
                    Spacer()
                        .frame(width: 16)
                    HStack{
                        Text(item)
                            .font(
                                Font.custom("SF Pro Display", size: 16)
                                    .weight(.medium)
                            )
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color(red: 0.51, green: 0.53, blue: 0.59))
                        
                    }
                    .background(Color(red: 0.98, green: 0.98, blue: 0.99))
                    .cornerRadius(5)
                    Spacer()
                        .frame(width: 16)
                }
                .frame(maxWidth: 425, alignment: .leading)
            }
        }
        
    }
}

struct PeculiaritiesSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        PeculiaritiesSwiftUIView()
    }
}
