//
//  ViewController.swift
//  Trung_Story
//
//  Created by Trung Bui on 1/25/23.
//

import UIKit

class ViewController: UIViewController {
    
    let spiderMan2002 = Trung(name: "Spider-man", year: 2002, image: UIImage(named: "Spiderman-1")!)
    let spiderMan2004 = Trung(name: "Spider-man 2", year: 2004, image: UIImage(named: "Spiderman-2")!)
    let spiderMan2007 = Trung(name: "Spider-man 3", year: 2007, image: UIImage(named: "Spiderman-3")!)
    let spiderMan2012 = Trung(name: "The Amazing Spider Man", year: 2012, image: UIImage(named: "Amazing-spiderman")!)
    let spiderMan2014 = Trung(name: "The Amazing Spider Man 2", year: 2014, image: UIImage(named: "Amazing-spiderman-2")!)
    
    var SpiderMan: [Trung] = []
    
    @IBOutlet var profilePhoto: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        profilePhoto.layer.cornerRadius = profilePhoto.frame.size.width/2
        profilePhoto.clipsToBounds = true
        profilePhoto.center = view.center
        
        SpiderMan = [spiderMan2002, spiderMan2004, spiderMan2007, spiderMan2012, spiderMan2014]
    }
    
    
    @IBAction func didTapView(_ sender: UITapGestureRecognizer) {
        if let tappedView = sender.view {
            performSegue(withIdentifier: "detailView", sender: tappedView)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailView",
           let tappedView = sender as? UIView,
           let detailViewController = segue.destination as? DetailView {
            
        
            if tappedView.tag == 0 {
                detailViewController.spiderman = SpiderMan[0]
            } else if tappedView.tag == 1 {
                detailViewController.spiderman = SpiderMan[1]
            } else if tappedView.tag == 2 {
                detailViewController.spiderman = SpiderMan[2]
            } else if tappedView.tag == 3 {
                detailViewController.spiderman = SpiderMan[3]
            } else if tappedView.tag == 4 {
                detailViewController.spiderman = SpiderMan[4]
            } else {
                print("no Spriderman was tapped, please check your selection.")
            }
            
        }
    }


}

