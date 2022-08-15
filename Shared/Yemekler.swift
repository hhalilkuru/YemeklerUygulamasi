//
//  Yemekler.swift
//  YemeklerUygulamasi
//
//  Created by Halil Kuru on 15.08.2022.
//

import Foundation

import SwiftUI

class Yemekler:Identifiable{
    
    var id:Int?
    var yemekAdi:String?
    var yemekResimAdi:String?
    var yemekFiyat:Float?
    
    init() {
        
    }
    
    init(id:Int, yemekAdi:String, yemekResimAdi:String,yemekFiyat:Float) {
        self.id = id
        self.yemekAdi = yemekAdi
        self.yemekResimAdi = yemekResimAdi
        self.yemekFiyat = yemekFiyat

    }
}
