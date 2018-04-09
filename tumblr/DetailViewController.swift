//
//  DetailViewController.swift
//  tumblr
//
//  Created by jordan on 3/24/18.
//  Copyright © 2018 MMI. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UIScrollViewDelegate {

    var passedUrlValue: String?
    
   
    
    @IBOutlet weak var detailPhotoImageView: UITableView!
    @IBOutlet weak var scrollView: UIScrollView!
    override func viewWillAppear(_ animated: Bool)
    { //ViewWillAppear, called just before the view is about to display
        super.viewWillAppear(animated)
        
        if let passedUrlValue = passedUrlValue
        { //check to see if we have a value
            
            
            
            let url = URL(string: passedUrlValue)
            detailPhotoImageView.af_setImage(withURL: url!)
        }
    }
    override func viewDidLoad()
    {
        
        super.viewDidLoad()
        self.scrollView.minimumZoomScale = 1.0
        self.scrollView.maximumZoomScale = 8.0
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func viewForZooming(in scrollView: UIScrollView) -> UIView?
    {
        return self.detailPhotoImageView
    }k
}
