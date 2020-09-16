//
//  Courses.swift
//  Networking
//
//  Created by Александр Прайд on 16.09.2020.
//  Copyright © 2020 Alexander Pride. All rights reserved.
//

import Foundation

struct Course: Decodable {
    
    let id: Int?
    let name: String?
    let link: String?
    let imageUrl: String?
    let numberOfLessons: Int?
    let numberOfTests: Int?
}
