//import Foundation
//import UIKit
//
//
//class HotelPageGetImages{
//    
//    
//    
//    static func getImages() -> [UIImage]{
//        
//        var imagesArray: [UIImage] = []
//        
//        HotelPageApi.getData { result in
//            switch result{
//                
//            case .success(let data):
//                for urlImage in data.image_urls{
//                    HotelPageApi.getImage(url: urlImage) { result in
//                        switch result{
//                            
//                        case .success(let image):
//                            imagesArray.append(image)
//                        case .failure(let error):
//                            print(error)
//                        }
//                    }
//                }
//            case .failure(let error):
//                print(error)
//            }
//        }
//        
//        
//        return imagesArray
//        
//    }
//    
//    
//}
