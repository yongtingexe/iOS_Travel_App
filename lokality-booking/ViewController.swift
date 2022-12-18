//
//  ViewController.swift
//  lokality-booking
import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var cardTableView: UITableView!
    
    let pictures: [UIImage] = [UIImage(named: "four_seasons.jpg")!, UIImage(named: "ritz_carlton.jpg")!, UIImage(named: "shangri_la.jpg")!]
    let names: [String] = ["Four Seasons", "Ritz Carlton", "Shangri-La"]
    let locations: [String] = ["Orchard Blvd", "Raffles Ave", "Central City"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //number of rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cardCell", for: indexPath) as! CardCell
        cell.configure(picture: pictures[indexPath.row], name: names[indexPath.row], location: locations[indexPath.row])
        return cell
    }
}

