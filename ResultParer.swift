//
//  ResultParer.swift
//  timedwalktest
//
//  Created by Khalid Mohamed on 1/25/17.
//  Copyright © 2017 Khalid Mohamed. All rights reserved.
//

import Foundation
import ResearchKit

struct ResultParser {
    static func findtimedWalkFiles(result:ORKTaskResult) -> [NSURL] {
        var urls = [NSURL]()
        if let results = result.results, results.count > 5,
           let timedWalkResult = results[3] as? ORKStepResult,
            let timedWalkResulttoo = results[4] as? ORKStepResult{
            
            for result in timedWalkResult.results! {
                if let result = result as? ORKFileResult,
                    let fileUrl = result.fileURL {
                    urls.append(fileUrl as NSURL)
                }
            }
            
            for result in timedWalkResulttoo.results! {
                if let result = result as? ORKFileResult,
                    let fileUrl = result.fileURL {
                    urls.append(fileUrl as NSURL)
                }
            }
        }
        return urls
        }
    }
    
