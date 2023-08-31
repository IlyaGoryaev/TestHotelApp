import SwiftUI

struct HotelImageSlider: View {
    
    let pictures: [Picture]
    
    var body: some View {
        TabView{
            ForEach(pictures){ picture in
                HotelPageImage(image: picture.image)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
        .frame(width: 425 - 32, height: 300)
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
