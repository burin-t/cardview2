//
//  CardView.swift
//  cardview2
//
//  Created by Burin Techama on 9/1/2566 BE.
//

import Foundation

struct CardViewModel {
    
    func calculate(a1: Int, a2: Int) -> Int {
        let smell1 = 0
        let smell2 = 1
        let smell3 = 3
        if a1 > a2 {
            return 1
        }else {
            return 2
        }
    }
    
    func calculateV2(a1: Int, a2: Int) -> Int {
        let smell1 = 0
        let smell2 = 1
        let smell3 = 3
        if a1 == 0 {
            return 10
        }else if a2 == 0 {
            return 20
        }else if a1 > a2 {
            return 1
        }else {
            return 2
        }
    }
    
}
