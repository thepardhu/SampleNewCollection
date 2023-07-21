import UIKit

class FoodsViewController: UIViewController {
    
    typealias DataSource = UICollectionViewDiffableDataSource<Section,TypeFood>
    typealias DataSourceSnapshot = NSDiffableDataSourceSnapshot<Section,TypeFood>
    let foodsCollectionView = UICollectionView(frame: .zero,
                                               collectionViewLayout: UICollectionViewLayout())
    var foodList : [TypeFood] = DataDummy().getTypeFood()
    var dataSource: DataSource!
    var snapshot = DataSourceSnapshot()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let layoutGuide = view.safeAreaLayoutGuide
        view.addSubview(foodsCollectionView)
        configureCategoriesCollectionView(layoutGuide)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        foodsCollectionView.reloadData()
    }
    
    private func configureCategoriesCollectionView(_ layoutGuide: UILayoutGuide) {
        foodsCollectionView.translatesAutoresizingMaskIntoConstraints = false
        foodsCollectionView.register(FoodItemCell.self, forCellWithReuseIdentifier: "FoodItemCell")
        foodsCollectionView.layout?.scrollDirection = .vertical
        foodsCollectionView.layout?.itemSize = CGSize(width: 50, height: 50)
        foodsCollectionView.setCollectionViewLayout(foodsCollectionView.layout ?? UICollectionViewFlowLayout(), animated: false)
        foodsCollectionView.delegate = self
        
        NSLayoutConstraint.activate([
            foodsCollectionView.topAnchor.constraint(equalTo: layoutGuide.topAnchor),
            foodsCollectionView.bottomAnchor.constraint(equalTo: layoutGuide.bottomAnchor),
            foodsCollectionView.leadingAnchor.constraint(equalTo: layoutGuide.leadingAnchor),
            foodsCollectionView.trailingAnchor.constraint(equalTo: layoutGuide.trailingAnchor),
        ])
    }
}

extension FoodsViewController : UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
      
        return UIEdgeInsets.zero
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
    
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        let noOfCellsInRow = 2
        let flowLayout = collectionViewLayout as! UICollectionViewFlowLayout

        let totalSpace = flowLayout.sectionInset.left
            + flowLayout.sectionInset.right
            + (flowLayout.minimumInteritemSpacing * CGFloat(noOfCellsInRow - 1))

        let size = Int((collectionView.bounds.width - totalSpace) / CGFloat(noOfCellsInRow))

        return CGSize(width: size, height: size)
     
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        foodList.count
    }
}

extension FoodsViewController {
    
    private func configureCollectionDataSource() {
        dataSource = DataSource(
           collectionView: foodsCollectionView,
           cellProvider: { (collectionView, indexPath, food) ->
             UICollectionViewCell? in
             let cell = collectionView.dequeueReusableCell(
               withReuseIdentifier: "FoodItemCell",
               for: indexPath) as? FoodItemCell
               cell?.bind(food)
             return cell
         })
    }
}
