import UIKit

class mainpage: UIViewController{
    
    @IBOutlet weak var lbl: UILabel!
    
    @IBOutlet weak var myCollectionView: UICollectionView!
    @IBOutlet weak var emergency: UIButton!
    @IBOutlet weak var myPagecontrol: UIPageControl!
    var name: String = ""
    var autoscrollImages = ["ad5","ad6","ad7","ad8"]
    var currentcellindex = 0
    var timer:Timer?
    override func viewDidLoad() {
        super.viewDidLoad()
        lbl.text = "Welcome, \(name)"
        emergency.addTarget(self, action: #selector(showAlert), for: .touchUpInside)
        timer = Timer.scheduledTimer(timeInterval: 3.0, target: self, selector: #selector(slideToNext), userInfo: nil, repeats: true)
    }
    @objc func slideToNext()
    {
        if currentcellindex < autoscrollImages.count-1
        {
            currentcellindex = currentcellindex+1
        }
        else
        {
            currentcellindex = 0
        }
        myPagecontrol.currentPage = currentcellindex
        myCollectionView.scrollToItem(at: IndexPath(item: currentcellindex, section: 0), at: .right, animated: true)
    }
    @objc func showAlert(){
        let alertView = UIAlertController(title: "Alert!!!", message: "You are Phone is now contacting Nearest Hospital!", preferredStyle: .alert)
        alertView.addAction(UIAlertAction(title: "Cancel Call", style: .cancel, handler: nil))
        alertView.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alertView,animated: true, completion: nil)
    }
}
extension mainpage: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return autoscrollImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MyCollectionViewCell
        cell.myImageView.image = UIImage(named: autoscrollImages[indexPath.row])
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: myCollectionView.frame.width, height: myCollectionView.frame.height)
    }
}


