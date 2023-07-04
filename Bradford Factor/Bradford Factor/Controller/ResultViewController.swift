//
//  ResultViewController.swift
//  Bradford Factor
//
//  Created by Mohamed Elkomey on 04/07/2023.
//

import UIKit

class ResultViewController: UIViewController {

    var factor:Int?
    var advice:String?
    
    @IBOutlet weak var factorLbl: UILabel!
    @IBOutlet weak var adviceLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        factorLbl.text = String(factor!)
        
        switch factor!{
        case 0...25:
            advice = "لا توجد مشكلة"
            view.backgroundColor = UIColor.green
        case 26...100:
            advice = "الموظف بحاجة الى لفت نظر من المدير"
            view.backgroundColor = UIColor.yellow
        case 101...500:
            advice = "الموظف يحتاج الى عقاب"
            view.backgroundColor = UIColor.orange
        case 501...:
            advice = "الموظف يحتاج الى عقاب صارم"
            view.backgroundColor = UIColor.red
        default:
            advice = "خطأ:لا توجد نتيجة"
            view.backgroundColor = UIColor.white
        }
        adviceLbl.text = advice
    }
    
    @IBAction func calculateAgain(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    


}
