//
//  PhotoViewController.swift
//  LoginApp
//
//  Created by Stanislav Testov on 02.04.2021.
//

import UIKit

class PhotoViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    
    var photoName = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photoImageView.image = UIImage(named: photoName)

        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
