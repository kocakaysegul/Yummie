//
//  ListOrdersViewController.swift
//  Yummie
//
//  Created by Ayşegül Koçak on 6.05.2023.
//

import UIKit

class ListOrdersViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var orders : [Order] = [
        .init(id: "id1", name: "Aysegul U", dish: .init(id: "id1", name: "Garri", description: "This is the best that I ever tasted", image: "https://picsum.photos/100/200", calories: 32)),
        .init(id: "id1", name: "Yahya U", dish: .init(id: "id1", name: "Beans and Garry", description: "This is the best that I ever tasted", image: "https://picsum.photos/100/200", calories: 32)),
        .init(id: "id1", name: "Aynur K", dish: .init(id: "id1", name: "Rice and Stew", description: "This is the best that I ever tasted", image: "https://picsum.photos/100/200", calories: 32)),
        .init(id: "id1", name: "Reşat K", dish: .init(id: "id1", name: "Fried Yam", description: "This is the best that I ever tasted", image: "https://picsum.photos/100/200", calories: 32)),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        title = "Orders"
        registerCells()
    }
    

    func registerCells(){
        tableView.register(UINib(nibName: DishListTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: DishListTableViewCell.identifier)
    }


}

extension ListOrdersViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return orders.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DishListTableViewCell.identifier) as! DishListTableViewCell
        cell.setup(order: orders[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = DishDetailViewController.instantiate()
        controller.dish = orders[indexPath.row].dish
        navigationController?.pushViewController(controller, animated: true)
    }
}
