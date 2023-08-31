import Foundation
//Изменить jsonDecoder
class HotelPageApi{
    
    static func getData(completion: @escaping(Result<HotelModel, Error>) -> ()){
        
        let url = URL(string: "https://run.mocky.io/v3/35e0d18e-2521-4f1b-a575-f0fe366f66e3")!
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error{
                print(error)
                completion(.failure(error))
                return
            }
            
            guard let data = data else { return }
            let someString = String(data: data, encoding: .utf8)
            print(someString!)
            
            do {
                let info = try JSONDecoder().decode(HotelModel.self, from: data)
                completion(.success(info))
            } catch let jsonError{
                print("Failed to decode", jsonError)
                completion(.failure(jsonError))
            }
        }.resume()
        
        
        
    }
    
}
