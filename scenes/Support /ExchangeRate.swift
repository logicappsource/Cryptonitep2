//
//  CryptoCurrencies .swift
//  CryptoNiteIO
//
//  Created by LogicAppSourceIO on 22/08/2017.
//  Copyright © 2017 Logicappsource. All rights reserved.
//

import Foundation
import Serpent

//Inhereits form Currency

struct ExchangeRate {
    //    var cryptoCurrency: [String: AnyObject] = [:]
    var market: String?
    var fromSymbol: String?
    var toSymbol: String?
    var price: Double?
    var lastUpdated: Double?
    var lastVolume: Double?
    var volume24h: Double?
    var open24h: Double?
    var high24h: Double?
    var low24h: Double?
    var lastMarket: String?
    var change24h: Double?
    var changePct24h: Double?
    var supply: Double?
    var mktcap: Double?
}



extension ExchangeRate: Serializable {
    init(dictionary: NSDictionary?) {
        market       <== (self, dictionary, "market")
        fromSymbol   <== (self, dictionary, "fromSymbol")
        toSymbol     <== (self, dictionary, "toSymbol")
        price        <== (self, dictionary, "price")
        lastUpdated  <== (self, dictionary, "lastUpdated")
        lastVolume   <== (self, dictionary, "lastVolume")
        volume24h    <== (self, dictionary, "volume24h")
        open24h      <== (self, dictionary, "open24h")
        high24h      <== (self, dictionary, "high24h")
        low24h       <== (self, dictionary, "low24h")
        lastMarket   <== (self, dictionary, "lastMarket")
        change24h    <== (self, dictionary, "change24h")
        changePct24h <== (self, dictionary, "changePct24h")
        supply       <== (self, dictionary, "supply")
        mktcap       <== (self, dictionary, "mktcap")
    }
    
    func encodableRepresentation() -> NSCoding {
        let dict = NSMutableDictionary()
        (dict, "market")       <== market
        (dict, "fromSymbol")   <== fromSymbol
        (dict, "toSymbol")     <== toSymbol
        (dict, "price")        <== price
        (dict, "lastUpdated")  <== lastUpdated
        (dict, "lastVolume")   <== lastVolume
        (dict, "volume24h")    <== volume24h
        (dict, "open24h")      <== open24h
        (dict, "high24h")      <== high24h
        (dict, "low24h")       <== low24h
        (dict, "lastMarket")   <== lastMarket
        (dict, "change24h")    <== change24h
        (dict, "changePct24h") <== changePct24h
        (dict, "supply")       <== supply
        (dict, "mktcap")       <== mktcap
        return dict
    }
}
