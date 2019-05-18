//
//  MemeDetailVC.swift
//  MemeMe 2.0
//
//  Created by Bushra AlSunaidi on 5/16/19.
//  Copyright © 2019 Bushra. All rights reserved.
//

import UIKit

class MemeDetailVC: UIViewController {
    
    var meme: Meme! = nil
    
    @IBOutlet weak var memedImage: UIImageView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        memedImage.image = meme.memedImage
    }
}
