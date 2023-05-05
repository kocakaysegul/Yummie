//
//  ListDishesViewController.swift
//  Yummie
//
//  Created by Ayşegül Koçak on 5.05.2023.
//

import UIKit

class ListDishesViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var category : DishCategory!
    
    var dishes: [Dish] = [
        .init(id: "id1", name: "Garri", description: "This is the best that I ever tasted", image: "https://picsum.photos/100/200", calories: 32),
        .init(id: "id1", name: "Indomie", description: "This is the best that I ever tastedThis is the best that I ever tastedThis is the best that I ever tastedThis is the best that I ever tastedThis is the best that I ever tasted", image: "https://picsum.photos/100/200", calories: 123),
        .init(id: "id1", name: "Pizza", description: "This is the best that I ever tasted", image: "https://picsum.photos/100/200", calories: 345)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        title = category.name
        registerCells()
    }
    
    private func registerCells(){
        tableView.register(UINib(nibName: DishListTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: DishListTableViewCell.identifier)
        
    }
    


}

extension ListDishesViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dishes.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DishListTableViewCell.identifier) as! DishListTableViewCell
        cell.setup(dish: dishes[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = DishDetailViewController.instantiate()
        controller.dish = dishes[indexPath.row]
        navigationController?.pushViewController(controller, animated: true)
    }
}
