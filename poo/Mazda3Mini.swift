//
//  Mazda3Mini.swift
//  poo
//
//  Created by Juan Bonforti on 25/05/2020.
//  Copyright © 2020 Juan Bonforti. All rights reserved.
//

import Foundation

class Mazda3Mini: Mazda3 {
    var porcentajeCarga:Int = 50
    
    func chargeBattery(){
        porcentajeCarga = 100
    }
    
}
