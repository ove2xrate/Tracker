import Foundation
import UIKit

final class TrackersScreenViewController: UIViewController {
    
    private let noTrackersImage = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupImageView()
        self.view.backgroundColor = UIColor.white
    }
    
    private func setupImageView() {
        noTrackersImage.image = UIImage(named: "noTrackersStar")
        noTrackersImage.tintColor = .gray
        
        noTrackersImage.accessibilityIdentifier = "NoTrackers"
        noTrackersImage.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(noTrackersImage)
        
        NSLayoutConstraint.activate([
            noTrackersImage.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 147),
            noTrackersImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 402),
            noTrackersImage.widthAnchor.constraint(equalToConstant: 80),
            noTrackersImage.heightAnchor.constraint(equalToConstant: 80)
        ])
    }
}
