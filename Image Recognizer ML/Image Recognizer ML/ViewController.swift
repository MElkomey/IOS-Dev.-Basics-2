//
//  ViewController.swift
//  Image Recognizer ML
//
//  Created by Mohamed Elkomey on 12/07/2023.
//

import UIKit
import CoreML
import Vision
import ImageIO

class ViewController: UIViewController ,UIImagePickerControllerDelegate ,UINavigationControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var resultlbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageView.contentMode = .scaleToFill
    }

    @IBAction func cameraPressed(_ sender: UIBarButtonItem) {
        openImgPicker()
    }
    
    func openImgPicker(){
        let imgPicker = UIImagePickerController()
        imgPicker.sourceType = .photoLibrary
        imgPicker.delegate = self
        imgPicker.allowsEditing = false
        present(imgPicker, animated: true,completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        imageView.image = info[.originalImage] as! UIImage
        picker.dismiss(animated: true, completion: nil)
        
        let pickedImage = CIImage(image: info[.originalImage] as! UIImage)
        detectImage(image: pickedImage!)
    }
    
    func detectImage(image:CIImage){
        
//         1-load the model (create model)
        let model = try? VNCoreMLModel(for: MobileNetV2().model)

//         2-create request
        let request = VNCoreMLRequest(model: model!) { request, error in
            let results = request.results as? [VNClassificationObservation]
            print(results?.first?.identifier)
            self.resultlbl.text = results?.first?.identifier
        }
//         3-perform the request
        let handler = VNImageRequestHandler(ciImage: image)
        do{
            try  handler.perform([request])
        }catch{
            print(error)
        }
       
    }
 
}

