//
//  ViewController.swift
//  Networking
//
//  Created by Александр Прайд on 15.09.2020.
//  Copyright © 2020 Alexander Pride. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageViewPic: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var getImageButton: UIButton!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        activityIndicator.isHidden = true
        activityIndicator.hidesWhenStopped = true
    }
    
    @IBAction func getImageButtonPressed(_ sender: Any) {
        
        self.label.isHidden = true
        self.getImageButton.isHidden = false
        activityIndicator.isHidden = false
        activityIndicator.startAnimating()
        
        guard let url = URL(string: "https://images.pexels.com/photos/1097491/pexels-photo-1097491.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260") else { return }
        
        let session = URLSession.shared
        
        session.dataTask(with: url) { (data, response, error) in
            if let data = data, let image = UIImage(data: data)  {
                DispatchQueue.main.async {
                   
                    self.activityIndicator.stopAnimating()
                    self.imageViewPic.image = image
                    
                }
            }
        }.resume()
        
    }
    
    
    


}

