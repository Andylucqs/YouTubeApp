//
//  ThrendingCell.swift
//  YouTube
//
//  Created by Vladislav Mityuklyaev on 26/07/2019.
//  Copyright © 2019 Vladislav Mityuklyaev. All rights reserved.
//

import UIKit

class ThrendingCell: FeedCell {
    
    override func fetchVideos() {
        ApiService.sharedInstance.fetchTrendingFeed { (videos) in
            self.videos = videos
            self.collectionView.reloadData()
        }
    }
    
}
