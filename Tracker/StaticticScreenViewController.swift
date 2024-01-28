import Foundation
import UIKit

final class StaticticScreenViewController: UIViewController {
    
    private let noStatisticImage = UIImageView()
    private let noStatisticlabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupImageView()
        setupLabel()
        
        self.view.backgroundColor = UIColor.white
    }
    
    private func setupImageView() {
        noStatisticImage.image = UIImage(named: "noStatisticSmile")
        noStatisticImage.tintColor = .gray
        
        noStatisticImage.accessibilityIdentifier = "NoStatistic"
        noStatisticImage.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(noStatisticImage)
        
        NSLayoutConstraint.activate([
            noStatisticImage.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 148),
            noStatisticImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 375),
            noStatisticImage.widthAnchor.constraint(equalToConstant: 80),
            noStatisticImage.heightAnchor.constraint(equalToConstant: 80)
        ])
    }
    
    private func setupLabel() {
        noStatisticlabel.text = "Анализировать пока нечего"
        noStatisticlabel.font = .systemFont(ofSize: 12)
        noStatisticlabel.sizeToFit()
        noStatisticlabel.textAlignment = .center
        
        noStatisticlabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(noStatisticlabel)
        
        NSLayoutConstraint.activate([
            noStatisticlabel.topAnchor.constraint(equalTo: noStatisticImage.bottomAnchor, constant: 8),
            noStatisticlabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            noStatisticlabel.widthAnchor.constraint(equalToConstant: 343),
            noStatisticlabel.heightAnchor.constraint(equalToConstant: 18)
        ])
    }
}
