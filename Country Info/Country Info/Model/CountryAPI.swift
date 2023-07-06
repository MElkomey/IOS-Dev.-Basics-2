/*
 to use api we need 4 steps
 1- create URL
 2- create URLSession
 3- create task
 4- start or resume task
*/
import Foundation

class CountryAPI{
    
    //static var countryAPI = CountryAPI()
    
    let urlBaseString = "https://restcountries.com/v3.1/name/"
    
    func fetchData(country:String){
        let urlString = "\(urlBaseString)\(country)"
        //1. create url
        let url = URL(string: urlString)!
        //2.create url session
        let session = URLSession(configuration: .default)
        //3. create task
        let task = session.dataTask(with: url, completionHandler: taskHandler(data:urlResponse:error:))
        //4.start or resume task
        task.resume()
    }
    
    func taskHandler(data:Data?,urlResponse:URLResponse?,error:Error?)->Void{
        let dataString = String(data: data!, encoding: .utf8)
        print(dataString)
    }
    
}
