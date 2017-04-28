//
//  TTIntentHandel.swift
//  TTSiriDemo
//
//  Created by zhang liangwang on 16/7/21.
//  Copyright © 2016年 zhangliangwang. All rights reserved.
//

import UIKit
import Intents

class TTIntentHandel: INExtension {
    override func handler(for intent: INIntent) -> AnyObject? {
        if intent is INSendMessageIntent {
            return IntentHandler()
        }
        return nil
    }
}






































