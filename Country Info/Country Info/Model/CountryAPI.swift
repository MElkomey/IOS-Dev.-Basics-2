/*
 to use api we need 4 steps
 1- create URL
 2- create URLSession
 3- create task
 4- start or resume task
*/
import Foundation

protocol CountryAPIDelegate{
    func didRetrieveCountryInfo(country:Country)
}


class CountryAPI{
    
    //static var countryAPI = CountryAPI()
    
    var delegate:CountryAPIDelegate?
    
    let urlBaseString = "https://restcountries.com/v3.1/name/"
    
    func fetchData(country:String){
        let urlString = "\(urlBaseString)\(country)"
        //1. create url
        if let url = URL(string: urlString){
            //2.create url session
            let session = URLSession(configuration: .default)
            //3. create task
            let task = session.dataTask(with: url, completionHandler: taskHandler(data:urlResponse:error:))
            //4.start or resume task
            task.resume()
        }else{
            print("error fetching data")
        }
    }
    
    func taskHandler(data:Data?,urlResponse:URLResponse?,error:Error?)->Void{
        do{
            let countries = try JSONDecoder().decode([Country].self,from: data!)
            let firstCountry = countries[0]
            delegate?.didRetrieveCountryInfo(country: firstCountry)
        }catch {
            print(error)
        }
        
//        let dataString = String(data: data!, encoding: .utf8)
//        //print(dataString)
//        delegate?.didRetrieveCountryInfo(countryInfo: dataString)
    }
    

}

