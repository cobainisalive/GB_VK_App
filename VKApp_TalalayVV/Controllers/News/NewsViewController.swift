//
//  NewsViewController.swift
//  VKApp_TalalayVV
//
//  Created by Vitaliy Talalay on 06.09.2021.
//

import UIKit

class NewsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var news = [
        News(
            avatar: UIImage(named: "StanMarsh"),
            creatorName: "Stan Marsh",
            newsText: "Marshe's rulesss!!! That was the greatest concert ever!!!",
            photos: [UIImage(named: "MarshConcert"),
                     UIImage(named: "Concert2"),
                     UIImage(named: "Concert3"),
                     UIImage(named: "Concert5")],
            viewsCount: 40,
            likeCount: 39),
        News(
            avatar: UIImage(named: "EricCartman"),
            creatorName: "Eric Cartman",
            newsText: "Now we have a pool",
            photos: [UIImage(named: "Pool")],
            viewsCount: 10,
            likeCount: 5),
        News(
            avatar: UIImage(named: "KyleBroflovski"),
            creatorName: "Kyle Broflovski",
            newsText: "Photos from my best friend's perfomance! That's really cool!!!",
            photos: [UIImage(named: "Concert5"),
                     UIImage(named: "Concert3"),
                     UIImage(named: "Concert4")],
            viewsCount: 10,
            likeCount: 8)
    ]
        
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        self.tableView.delegate = self
        // Do any additional setup after loading the view.
    }

}

extension NewsViewController: UITableViewDataSource{
    
    // Метод задающий количество секций в таблице
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    // Метод задающий количество строк в секции таблицы
    func tableView(
        _ tableView: UITableView,
        numberOfRowsInSection section: Int) -> Int {
        return news.count
    }
    
    func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Получаем ячейку из пула и проверяем, что ячейка нужного типа
        guard let cell = tableView.dequeueReusableCell(
                withIdentifier: "newsCell",
                for: indexPath) as? NewsCell
        // Иначе возвращаем пустую ячейку
        else { return UITableViewCell() }
        
        cell.configure(news: news[indexPath.row])
        return cell
    }
}

//MARK: - UITableViewDelegate

extension NewsViewController: UITableViewDelegate {
    // Метод выделения ячейки
    func tableView(
        _ tableView: UITableView,
        didSelectRowAt indexPath: IndexPath) {
        
        //defer конструкция которая всегда выполняется в конце кода
        //в независимоти от места ее написания
        defer {
            // Метод для снятия выделения с ячейки
            tableView.deselectRow(at: indexPath, animated: true)
        }
        
    }
    
    // Метод задающий высоту ячейки таблицы
    func tableView(
        _ tableView: UITableView,
        heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}