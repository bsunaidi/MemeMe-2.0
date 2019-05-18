//
//  SentMemesTableVC.swift
//  MemeMe 2.0
//
//  Created by Bushra AlSunaidi on 5/15/19.
//  Copyright © 2019 Bushra. All rights reserved.
//

import UIKit

class SentMemesTableVC: UITableViewController {
    
    var memes: [Meme]! {
        let object = UIApplication.shared.delegate
        let appDelegate = object as! AppDelegate
        return appDelegate.memes
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    //MARK: Table View Data Source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "memesCellId")!
        let meme = memes[indexPath.row]
        cell.textLabel?.text = "\(meme.topText ?? "") ... \(meme.bottomText ?? "")"
        cell.imageView?.image = meme.memedImage
        
        return cell
        
    }
    
    //MARK: Table View Delegates
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let meme = memes[indexPath.row]
        let memeDetail = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MemeDetailVCID") as! MemeDetailVC
        memeDetail.meme = meme
        navigationController?.pushViewController(memeDetail, animated: true)
    }
    
}
