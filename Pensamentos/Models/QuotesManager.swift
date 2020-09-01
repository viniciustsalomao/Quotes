//
//  QuotesManager.swift
//  Pensamentos
//
//  Created by Vinícius Tinajero Salomão on 31/08/20.
//  Copyright © 2020 Vinícius Tinajero Salomão. All rights reserved.
//

import Foundation


class QuotesManager {
 
    let quotes: [Quote]
    
    init() {
        let fileURL = Bundle.main.url(forResource: "quotes", withExtension: "json")!
        let jsonData = try! Data(contentsOf: fileURL)
        let jsonDecoder = JSONDecoder()
        quotes = try! jsonDecoder.decode([Quote].self, from: jsonData)
    }
    
    func getRandomQuote() -> Quote {
        let index = Int(arc4random_uniform(UInt32(quotes.count)))
        return quotes[index]
    }
    
}
