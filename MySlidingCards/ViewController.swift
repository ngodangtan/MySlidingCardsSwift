//
//  ViewController.swift
//  MySlidingCards
//
//  Created by Ngo Dang tan on 22/12/2020.
//

import UIKit
import CardSlider
struct Item: CardSliderItem {
    var image: UIImage
    
    var rating: Int?
    
    var title: String
    
    var subtitle: String?
    
    var description: String?
    
    
}
class ViewController: UIViewController {

    @IBOutlet var myButton: UIButton!
    private var data = [Item]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        data.append(Item(image: UIImage(named: "dog")!,
                         rating: nil,
                         title: "Bookmarks",
                         subtitle: "Get excited about bookmarks",
                         description: "You can add bookmarks in the app now!"))
        data.append(Item(image: UIImage(named: "dog")!,
                         rating: nil,
                         title: "Bookmarks",
                         subtitle: "Get excited about bookmarks",
                         description: "You can add bookmarks in the app now!"))
        data.append(Item(image: UIImage(named: "dog")!,
                         rating: nil,
                         title: "Bookmarks",
                         subtitle: "Get excited about bookmarks",
                         description: "You can add bookmarks in the app now!"))
        myButton.backgroundColor = .link
        myButton.setTitleColor(.white, for: .normal)
        
    }
    
    @IBAction func didTapButton(){
        
   
        let vc = CardSliderViewController.with(dataSource: self)
        vc.title = "Welcome"
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
        
    }


}

extension ViewController: CardSliderDataSource {
    func item(for index: Int) -> CardSliderItem {
        return data[index]
    }
    
    func numberOfItems() -> Int {
        return data.count
    }
    
    
}
