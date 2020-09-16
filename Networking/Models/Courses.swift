//
//  Courses.swift
//  Networking
//
//  Created by Александр Прайд on 16.09.2020.
//  Copyright © 2020 Alexander Pride. All rights reserved.
//

import Foundation

struct Course: Decodable {
    
    let id: Int
    let name: String
    let link: String
    let imageUrl: String
    let number_of_lessons: Int
    let number_of_tests: Int
}
