//
//  ViewController.swift
//  SearchBarUsage
//
//  Created by Ömer Faruk Kılıçaslan on 17.04.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.searchBar.delegate = self
        
        searchBar.scopeButtonTitles = ["Birinci", "İkinci"]

    }


}

extension ViewController:UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("Arama Sonuç : \(searchText)")
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        print("Cancel Seçildi")
    }
    
    func searchBar(_ searchBar: UISearchBar, selectedScopeButtonIndexDidChange selectedScope: Int) {
        if selectedScope == 0{
            print("Birinci Seçildi")
        }
        if selectedScope == 1{
            print("İkinci Seçildi")
        }
    }
}
