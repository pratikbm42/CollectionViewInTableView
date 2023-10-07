//
//  ViewController.swift
//  CollectionViewInTableView
//
//  Created by Mac on 02/10/23.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource{
    
    var models = [Model]()
    
    func data(){
        models.append(Model(text: "KKR",imageName: "KKR"))
        models.append(Model(text: "CSK",imageName: "CSK"))
        models.append(Model(text: "MI",imageName: "MI"))
        models.append(Model(text: "RCB",imageName: "RCB"))
        models.append(Model(text: "SRH",imageName: "SRH"))
        models.append(Model(text: "DC",imageName: "DC"))
        models.append(Model(text: "RR",imageName: "RR"))
        models.append(Model(text: "LSG",imageName: "LSG"))
        models.append(Model(text: "GT",imageName: "GT"))
        models.append(Model(text: "PK",imageName: "PK"))
        
        
        
    }
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        data()
        
        let nib = UINib(nibName: "CollectionTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "cell1")
       
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! CollectionTableViewCell
        
        cell.configure(with: models)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }

}

struct Model{
    var text : String
    var imageName : String
    
    init(text:String, imageName:String){
        self.text = text
        self.imageName = imageName
    }

}
