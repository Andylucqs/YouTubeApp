//
//  SubscriptionCell.swift
//  YouTube
//
//  Created by Vladislav Mityuklyaev on 26/07/2019.
//  Copyright © 2019 Vladislav Mityuklyaev. All rights reserved.
//

import UIKit

class SubscriptionCell: FeedCell {
    
    override func fetchVideos() {
        ApiService.sharedInstance.fetchSubscriprionFeed { (videos) in
            self.videos = videos
            self.collectionView.reloadData()
        }
    }
    
}
