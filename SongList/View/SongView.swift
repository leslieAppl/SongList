//
//  SongView.swift
//  SongList
//
//  Created by leslie on 3/1/20.
//  Copyright © 2020 leslie. All rights reserved.
//

import UIKit

class SongView: UIView {
    
    // observing and exchanging 'Song' struct into 'SongView's 'contentView' of Song Table Cell
    var song: Song! {
        
        didSet {
            
            albumCoverImg.image = song.albumCover
            titleLbl.text = song.title
            artistLbl.text = song.artist
            albumLbl.text = song.album
            yearLbl.text = song.year
            
        }
    }
    
    // 'SongView.xib' file reference
    @IBOutlet var contentView: UIView!
    
    @IBOutlet weak var albumCoverImg: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var artistLbl: UILabel!
    @IBOutlet weak var albumLbl: UILabel!
    @IBOutlet weak var yearLbl: UILabel!
    
    // init custom view via code
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        commonInit()
    }
    
    // init custom view via storyboard
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        commonInit()
    }
    
    func commonInit() {
        
        // Unarchives the contents of a nib file
        Bundle.main.loadNibNamed("SongView", owner: self, options: nil)

        // this method removes the previous superview before making the receiver its new superview.
        addSubview(contentView)
        
        // (Optional) To use Auto Layout to match different sizes of the iPhone.
        // If you want to use Auto Layout to dynamically calculate the size and position of your view, you must set this property to false.
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        contentView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        contentView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        
    }
}
