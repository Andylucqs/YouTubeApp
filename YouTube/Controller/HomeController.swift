//
//  ViewController.swift
//  YouTube
//
//  Created by Vladislav Mityuklyaev on 23/07/2019.
//  Copyright © 2019 Vladislav Mityuklyaev. All rights reserved.
//

import UIKit

class HomeController: UICollectionViewController, UICollectionViewDelegateFlowLayout{

    var videos: [Video] = {
        
        var mythBustersChannel = Channel()
        mythBustersChannel.name = "Myth Busters"
        mythBustersChannel.profileImageName = "muthBustersLogo"
        
        var nearEnoughtVideo = Video()
        nearEnoughtVideo.title = "VSause: The law of near enought"
        nearEnoughtVideo.thumbnailImageName = "near_enought"
        nearEnoughtVideo.channel = mythBustersChannel
        nearEnoughtVideo.numberOfVievs = 234234565
        
        
        var runEarthVideo = Video()
        runEarthVideo.title = "VSause: Как движется земля"
        runEarthVideo.thumbnailImageName = "run_earth"
        runEarthVideo.channel = mythBustersChannel
        runEarthVideo.numberOfVievs = 2342334996
        
        return [nearEnoughtVideo, runEarthVideo]
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "Home"
        navigationController?.navigationBar.isTranslucent = false
        
        let titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width - 32, height: view.frame.height))
        titleLabel.text = "Home"
        titleLabel.textColor = .white
        titleLabel.font = UIFont.systemFont(ofSize: 20)
        navigationItem.titleView = titleLabel
        
        collectionView.backgroundColor = .white
        
        collectionView.register(VideoCell.self, forCellWithReuseIdentifier: "cellId")
        
        collectionView.contentInset = UIEdgeInsets(top: 50, left: 0, bottom: 0, right: 0)
        collectionView.scrollIndicatorInsets = UIEdgeInsets(top: 50, left: 0, bottom: 0, right: 0)
        
        setupMenuBar()
        setupNavBarbuttons()
    }
    
    func setupNavBarbuttons() {
        let searchImage = UIImage(named: "search_icon")?.withRenderingMode(.alwaysOriginal)
        let searchBarButtonItem = UIBarButtonItem(image: searchImage, style: .plain, target: self, action: #selector(handSearch))
        
        let moreImage = UIImage(named: "nav_more_icon")?.withRenderingMode(.alwaysOriginal)
        let moreButton = UIBarButtonItem(image: moreImage, style: .plain, target: self, action: #selector(handMore))
        
        navigationItem.rightBarButtonItems = [moreButton, searchBarButtonItem]
        
    }
    
    @objc func handSearch() {
        
    }
    
    @objc func handMore() {
        
    }
    
    let menuBar: MenuBar = {
        let mb = MenuBar()
        return mb
    }()

    private func setupMenuBar() {
        view.addSubview(menuBar)
        view.addConstraintWithFormat(format: "H:|[v0]|", view: menuBar)
        view.addConstraintWithFormat(format: "V:|[v0(50)]", view: menuBar)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return videos.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath) as! VideoCell
        
        cell.video = videos[indexPath.item]
        
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let height = (view.frame.width - 16 - 16) * 9 / 16
        return CGSize(width: view.frame.width, height: height + 16 + 80)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
}







