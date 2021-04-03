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
    
}
