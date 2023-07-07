//
//  ViewController.swift
//  Arab News
//
//  Created by Mohamed Elkomey on 06/07/2023.
//

import UIKit

class ViewController: UIViewController {
    
    var news = ["News1","News2","News3","News4"]
    
    var newsAPI = NewsAPI()

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        newsAPI.fetchData()
    }


}

extension ViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return news.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = news[indexPath.row]
        return cell
    }
}
