import Foundation
import UIKit

final class TrackersScreenViewController: UIViewController, UISearchBarDelegate {
    
    private let noTrackersImage = UIImageView()
    private let noTrackerslabel = UILabel()
    private var plusButton = UIButton(type: .system)
    private let titleLabel = UILabel()
    private let searchBar:UISearchBar = UISearchBar()
    private let dateLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavBar()
        
        setupTitleLabel()
        setupPlusButton()
        setupImageView()
        setupLabel()
        setupSearchBar()
        setupDateLabel()
        
        self.view.backgroundColor = UIColor.white
    }
    
    // Лейбл с датой
    func setupDateLabel() {
        dateLabel.text = longDateFormatter.string(from: Date())
        dateLabel.font = .systemFont(ofSize: 17)
        dateLabel.backgroundColor = UIColor(hex: "#F0F0F0")
        dateLabel.layer.masksToBounds = true
        dateLabel.layer.cornerRadius = 8
        dateLabel.sizeToFit()
        dateLabel.textAlignment = .center
        
        dateLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(dateLabel)
        
        NSLayoutConstraint.activate([
            dateLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 49),
            dateLabel.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -8),
            dateLabel.widthAnchor.constraint(equalToConstant: 77),
            dateLabel.heightAnchor.constraint(equalToConstant: 34)
        ])
    }
    
    // Поиск
    func setupSearchBar() {
        searchBar.searchBarStyle = UISearchBar.Style.prominent
        searchBar.placeholder = "Поиск"
        searchBar.sizeToFit()
        searchBar.isTranslucent = false
        searchBar.backgroundImage = UIImage()
        
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(searchBar)
        
        NSLayoutConstraint.activate([
            searchBar.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 7),
            searchBar.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 8),
            searchBar.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -8),
            searchBar.heightAnchor.constraint(equalToConstant: 36)
        ])
    }
    
    // Нав-бар
    func setupNavBar() {
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: plusButton)
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: dateLabel)
    }
    
    // Лейбл с заголовком
    private func setupTitleLabel() {
        titleLabel.text = "Трекеры"
        titleLabel.textColor = .black
        titleLabel.font = .systemFont(ofSize: 34, weight: .bold)
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(titleLabel)
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
        ])
    }
    
    // Кнопка «+»
    private func setupPlusButton() {
        plusButton.setImage(UIImage(named: "Plus"), for: .normal)
        plusButton.tintColor = .black
        plusButton.addTarget(self, action: #selector (addTracker), for: .touchUpInside)
        plusButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(plusButton)
    }
    
    @objc private func addTracker() {
    }
    
    // Пикча над лэйблом «"Что будем отслеживать?"»
    private func setupImageView() {
        noTrackersImage.image = UIImage(named: "noTrackersStar")
        noTrackersImage.tintColor = .gray
        
        noTrackersImage.accessibilityIdentifier = "NoTrackers"
        noTrackersImage.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(noTrackersImage)
        
        NSLayoutConstraint.activate([
            noTrackersImage.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 148),
            noTrackersImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 402),
            noTrackersImage.widthAnchor.constraint(equalToConstant: 80),
            noTrackersImage.heightAnchor.constraint(equalToConstant: 80)
        ])
    }
    
    // Лэйбл "Что будем отслеживать?"
    private func setupLabel() {
        noTrackerslabel.text = "Что будем отслеживать?"
        noTrackerslabel.font = .systemFont(ofSize: 12)
        noTrackerslabel.sizeToFit()
        noTrackerslabel.textAlignment = .center
        
        noTrackerslabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(noTrackerslabel)
        
        NSLayoutConstraint.activate([
            noTrackerslabel.topAnchor.constraint(equalTo: noTrackersImage.bottomAnchor, constant: 8),
            noTrackerslabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            noTrackerslabel.widthAnchor.constraint(equalToConstant: 343),
            noTrackerslabel.heightAnchor.constraint(equalToConstant: 18)
        ])
    }
}
