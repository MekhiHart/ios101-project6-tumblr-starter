//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Mekhi Hart Dela Cruz on 10/27/23.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {

    @IBOutlet weak var summaryTextLabel: UILabel!
    var post: Post!
//    @IBOutlet weak var summaryLabelText: UILabel!
    @IBOutlet weak var posterImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        summaryTextLabel.text = post.caption.trimHTMLTags()
        // Do any additional setup after loading the view.
        
        if let photo = post.photos.first{
            let url = photo.originalSize.url
            Nuke.loadImage(with: url, into: posterImageView)
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
