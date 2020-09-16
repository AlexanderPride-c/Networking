//
//  WebsiteDescription.swift
//  Networking
//
//  Created by Александр Прайд on 16.09.2020.
//  Copyright © 2020 Alexander Pride. All rights reserved.
//

import Foundation

struct WebsiteDescription: Decodable {
    var websiteDescription: String
    var websiteName: String
    var courses: [Course]
}
