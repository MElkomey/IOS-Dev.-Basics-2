

import Foundation


class NewsAPI{
    
    func fetchData(){
        let urlString = "https://newsapi.org/v2/top-headlines?sources=google-news-sa&apiKey=d6d15b5dd8344879a852ead84b5d6230"
        let url = URL(string: urlString)
        let urlSession = URLSession(configuration: .default)
        let task = urlSession.dataTask(with: url!) { data, response, error in
            if error != nil {
                print(error?.localizedDescription)
            }else{
                print(data)
            }
        }
        task.resume()
        }
        
        
    }

