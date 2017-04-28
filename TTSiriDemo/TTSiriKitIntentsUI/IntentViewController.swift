//
//  IntentViewController.swift
//  TTSiriKitIntentsUI
//
//  Created by zhang liangwang on 16/7/15.
//  Copyright © 2016年 zhangliangwang. All rights reserved.
//

import IntentsUI

// As an example, this extension's Info.plist has been configured to handle interactions for INStartWorkoutIntent.
// You will want to replace this or add other intents as appropriate.
// The intents whose interactions you wish to handle must be declared in the extension's Info.plist.

// You can test this example integration by saying things to Siri like:
// "Start my workout using <myApp>"

class IntentViewController: UIViewController, INUIHostedViewControlling,INUIHostedViewSiriProviding {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MAK: - INUIHostedViewControlling
    // Prepare your view controller for the interaction to handle.
    func configure(with interaction: INInteraction!, context: INUIHostedViewContext, completion: ((CGSize) -> Void)!) {
        
        if let completion = completion {
            completion(self.desiredSize)
        }
    }
    
    
    
    // MARK: - INUIHostedViewControlling
    // Prepare your view controller for the interaction to handle.
//    func configure(with interaction: INInteraction!, context: INUIHostedViewContext, completion: ((CGSize) -> Void)!) {
//        // Do configuration here, including preparing views and calculating a desired size for presentation.
//        
//        let charVC = TTChartViewController()
//        
//        switch interaction.intentHandlingStatus {
//        case .unspecified,.inProgress,.ready:
//            charVC.show()
//        case .done:
//            charVC.showNoDataView()
//        default:
//            print("")
//        }
//    
//        self.present(charVC, animated: true, completion: nil)
//        
//        completion(self.desiredSize)
//        
////        if let completion = completion {
////            completion(self.desiredSize)
////        }
//    }
    
    var desiredSize: CGSize {
        return self.extensionContext!.hostedViewMaximumAllowedSize
    }
    
}































































































