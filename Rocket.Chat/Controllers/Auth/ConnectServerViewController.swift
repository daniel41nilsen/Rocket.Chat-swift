//
//  ConnectServerViewController.swift
//  Rocket.Chat
//
//  Created by Rafael K. Streit on 7/6/16.
//  Copyright © 2016 Rocket.Chat. All rights reserved.
//

import Foundation
import UIKit

class ConnectServerViewController: BaseViewController {
    
    @IBOutlet weak var textFieldServerURL: UITextField!
    

    // MARK: IBAction
    
    @IBAction func buttonConnectPressed(sender: AnyObject) {
        let url = NSURL(string: textFieldServerURL.text!)!
        SocketManager.connect(url) { [unowned self] (socket, connected) in
            if connected {
                self.performSegueWithIdentifier("Auth", sender: nil)
            }
        }
    }
    
}
