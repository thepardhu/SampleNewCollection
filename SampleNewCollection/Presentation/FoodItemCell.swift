import UIKit

class FoodItemCell: UICollectionViewCell {
    
    private let imageView = UIImageView()
    private let nameLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubviews()
        addConstraints()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        addSubviews()
        addConstraints()
    }
    
    func bind(_ food: TypeFood) {
        nameLabel.text = food.nameType
        imageView.image = food.imgType
    }
}

extension FoodItemCell: CustomViewBuildable {
    
    func addSubviews() {
        contentView.addSubview(imageView)
        imageView.addSubview(nameLabel)
    }
    
    func addConstraints() {
        configureImageView()
        configureNameLabel()
    }
    
    private func configureImageView() {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 4),
            imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 4),
            imageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -4),
            imageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -4)
        ])
    }
    
    private func configureNameLabel() {
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.textAlignment = .center
        nameLabel.textColor = .white
        nameLabel.font = .boldSystemFont(ofSize: 18)
        nameLabel.numberOfLines = 0
        
        NSLayoutConstraint.activate([
            nameLabel.leadingAnchor.constraint(equalTo: imageView.leadingAnchor, constant: 8),
            nameLabel.trailingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: -8),
            nameLabel.bottomAnchor.constraint(equalTo: imageView.bottomAnchor, constant: -32)
        ])
    }
}
