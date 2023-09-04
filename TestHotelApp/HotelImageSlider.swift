import SwiftUI

struct HotelImageSlider: View {
    
    let pictures: [Picture]
    
    var body: some View {
        HStack{
            Spacer()
                .frame(width: 16)
            TabView{
                    ForEach(pictures){ picture in
                            HotelPageImage(image: picture.image)
                    }
                
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            .font(.title)
            .frame(height: 257)
            Spacer()
                .frame(width: 16)
        }
        .frame(maxWidth: .infinity)
        
    }
}

struct HotelImageSlider_Previews: PreviewProvider {
    static var previews: some View {
        HotelImageSlider(pictures:[
            Picture(id: "1", image: UIImage(named: "HotelPhoto")!),
            Picture(id: "2", image: UIImage(named: "HotelPhoto")!), Picture(id: "3", image: UIImage(named: "HotelPhoto")!)])
                                .background(Color.white)
                         }
                         }
