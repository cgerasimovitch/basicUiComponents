//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Admin on 5/29/21.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    var profileView = ProfileHeaderView() as UIView
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        edgesForExtendedLayout = []
        view.addSubview(profileView)
    }
    
    override func viewWillLayoutSubviews(){
        profileView.frame = self.view.frame
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
