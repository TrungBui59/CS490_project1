//
//  DetailView.swift
//  Trung_Story
//
//  Created by Trung Bui on 1/27/23.
//

import UIKit

class DetailView: UIViewController {
    
    var spiderman: Trung?
    
    
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var Name: UILabel!
    @IBOutlet weak var Year: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let spiderman = spiderman {
            print(spiderman.name)
            ImageView.image = spiderman.image
            Name.text = spiderman.name
            Year.text = String(spiderman.year)
            
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
