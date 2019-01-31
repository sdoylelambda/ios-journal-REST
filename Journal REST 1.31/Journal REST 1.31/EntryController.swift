import Foundation

class EntryController {
    
 //   var entries: [Entries] = []
    private var entry: Entry?
    
    typealias completetionHandler = (Error?) -> Void
    
    var baseURL = URL(string: "https://console.firebase.google.com/u/0/project/journal-f50bf/database/journal-f50bf/data")!
    
    func fetchEntries() {
        
    }
    
    func create() {
        
    }
    
    
    func put(searchTerm: String, resultType: Entry, completion: @escaping completetionHandler) {
        
      //  URLSession.shared.dataTask(with: baseURL) { (data, _, error)  {
        let firebase = baseURL.appendPathComponent(searchTerm)
      
        let x = baseURL.appendingPathExtension("y")
        
        // fire base instead of baseURL ???
         URLSession.shared.dataTask(with: baseURL) { (data, _, error) in
            if let data = data {
            let jsonDecoder = JSONDecoder()
            do {
                self.entry = try jsonDecoder.decode(entry, from: data)
            } catch {
                print(error)
                DispatchQueue.main.async {
                    completion(error)
                }
                return
            }
        } else {
            DispatchQueue.main.async {
                completion(NSError())
            }
            return
            }
        } .resume()
    }
}
