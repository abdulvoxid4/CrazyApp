import UIKit

final class AnimalsView: UIViewController {
    // MARK: - UI Components
    let scrollView = UIScrollView()
    let stackView = UIStackView()
    var imageNames: [String] = []

    var selectedAnimal: Animal!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupScrollView()
        selectAnimalImages()
        setupImages()
    }

    private func selectAnimalImages() {
        guard let selectedAnimal = selectedAnimal else { return }
        
        switch selectedAnimal.name {
        case "Lion":
            imageNames = AnimalData.shared.lions.map { $0.image }
        case "Elephant":
            imageNames = AnimalData.shared.elephants.map { $0.image }
        case "Eagle":
            imageNames = AnimalData.shared.eagles.map { $0.image }
        default:
            imageNames = []
        }
    }

    // MARK: - UI Components
    private func setupScrollView() {
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.showsHorizontalScrollIndicator = true
        scrollView.isPagingEnabled = true
        
        view.addSubview(scrollView)
        
        NSLayoutConstraint.activate([
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            scrollView.heightAnchor.constraint(equalToConstant: 300)
        ])
        
        stackView.axis = .horizontal
        stackView.spacing = 10
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        scrollView.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            stackView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            stackView.heightAnchor.constraint(equalTo: scrollView.heightAnchor)
        ])
    }

    private func setupImages() {
        for imageName in imageNames {
            let imageView = UIImageView()
            imageView.image = UIImage(named: imageName)
            imageView.contentMode = .scaleAspectFill
            imageView.clipsToBounds = true
            imageView.translatesAutoresizingMaskIntoConstraints = false
            stackView.addArrangedSubview(imageView)
            
            NSLayoutConstraint.activate([
                imageView.widthAnchor.constraint(equalTo: view.widthAnchor)
            ])
        }
    }
}
