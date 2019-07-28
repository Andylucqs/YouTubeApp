//
//  Model.swift
//  YouTube
//
//  Created by Vladislav Mityuklyaev on 24/07/2019.
//  Copyright © 2019 Vladislav Mityuklyaev. All rights reserved.
//

import UIKit

struct Video: Decodable {
    
    var thumbnailImageName: String?
    var title: String?
    var numberOfViews: Int?
    var uploadDate: Date?
    
    var channel: Channel?
    
}

struct Channel: Decodable {
    var name: String?
    var profileImageName: String?
}
