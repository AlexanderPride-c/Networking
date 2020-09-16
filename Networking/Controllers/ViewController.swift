//
//  ViewController.swift
//  Networking
//
//  Created by Александр Прайд on 15.09.2020.
//  Copyright © 2020 Alexander Pride. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func getRequest(_ sender: Any) {
        
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else { return }
        
        let session = URLSession.shared
        session.dataTask(with: url) { (data, response, error) in
            guard
                let response = response,
                let data = data
                else {return}
            
            print(response)
            print(data)
        
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                print(json)
            } catch {
                print("Error")
            }
            
        }.resume()
    }
    
    @IBAction func postRequest(_ sender: Any) {
        
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else { return }
        
        let userData = ["Course": "Networking", "Lesson": "GET and POST request"]
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        
        guard let httpBody = try? JSONSerialization.data(withJSONObject: userData, options: []) else { return }
        request.httpBody = httpBody
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let session = URLSession.shared
        session.dataTask(with: request) { (data, request, error) in
            guard let request = request, let data = data else { return }
            print(request)
            
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                print(json)
            } catch {
                print(error)
            }
        }.resume()
    }
    
}

