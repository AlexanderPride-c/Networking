//
//  ImageViewController.swift
//  Networking
//
//  Created by Александр Прайд on 15.09.2020.
//  Copyright © 2020 Alexander Pride. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    @IBOutlet weak var imageViewPic: UIImageView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    private let url = "https://images.pexels.com/photos/1097491/pexels-photo-1097491.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        activityIndicator.isHidden = true
        activityIndicator.hidesWhenStopped = true
        fetchImage()
    }

    func fetchImage() {
        
        activityIndicator.isHidden = false
        activityIndicator.startAnimating()
        
      
        NetworkManager.downloadImage(url: url) { (image) in
            
            self.activityIndicator.stopAnimating()
            self.imageViewPic.image = image
        }
             
    }
        
       
}

