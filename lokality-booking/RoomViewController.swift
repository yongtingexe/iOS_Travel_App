import UIKit

class RoomViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var roomPictures = [UIImage(named: "room1.jpg"), UIImage(named: "room2.jpg"), UIImage(named: "room3.jpg")]
   
    @IBOutlet weak var optButton1: UIButton!
    @IBOutlet weak var optButton2: UIButton!
    @IBOutlet weak var optButton3: UIButton!
    @IBOutlet weak var optButton4: UIButton!
    @IBOutlet weak var priceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return roomPictures.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let roomCell = collectionView.dequeueReusableCell(withReuseIdentifier: "roomCell", for: indexPath) as? RoomCollectionViewCell
        roomCell?.roomPicture.image = roomPictures[indexPath.row]
        return roomCell!
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = collectionView.frame.size
        return CGSize(width: size.width, height: size.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    @IBAction func optButton1(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
            optButton2.isSelected = false
            optButton3.isSelected = false
            optButton4.isSelected = false
        }
        else{
            sender.isSelected = true
            optButton2.isSelected = false
            optButton3.isSelected = false
            optButton4.isSelected = false
            priceLabel.text = "599"
        }
    }
    
    
    @IBAction func optButton2(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
            optButton1.isSelected = false
            optButton3.isSelected = false
            optButton4.isSelected = false
        }
        else {
            sender.isSelected = true
            optButton1.isSelected = false
            optButton3.isSelected = false
            optButton4.isSelected = false
            priceLabel.text = "899"
        }
    }
    
    
    @IBAction func optButton3(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
            optButton1.isSelected = false
            optButton2.isSelected = false
            optButton4.isSelected = false
        }
        else {
            sender.isSelected = true
            optButton1.isSelected = false
            optButton2.isSelected = false
            optButton4.isSelected = false
            priceLabel.text = "1399"
        }
    }
    
    @IBAction func optButton4(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
            optButton1.isSelected = false
            optButton2.isSelected = false
            optButton3.isSelected = false
        }
        else {
            sender.isSelected = true
            optButton1.isSelected = false
            optButton2.isSelected = false
            optButton3.isSelected = false
            priceLabel.text = "1999"
        }
    }
    
}
