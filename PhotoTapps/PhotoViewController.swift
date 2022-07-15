//
//  PhotoViewController.swift
//  PhotoTapps
//
//  Created by Aleh Kuchynski on 07/05/2022.
//

import UIKit

class PhotoViewController: UIViewController {
    
    var image: UIImage?
    @IBOutlet weak var photoImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoImageView.image = image

        // Do any additional setup after loading the view.
    }
    @IBAction func buttonShare(_ sender: Any) {
        let shareController = UIActivityViewController(activityItems: [image!], applicationActivities: nil)
        shareController.completionWithItemsHandler = { _, bool, _, _ in
            if bool {
                print("OK")
            }
            
        }
        present(shareController, animated: true, completion: nil)
    }
    
}
