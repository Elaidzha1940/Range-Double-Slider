//
//  ContentView.swift
//  Range Slider
//
//  Created by Elaidzha Shchukin on 20.03.2023.
//

import SwiftUI

struct SliderComponent1: View {
    
    var totalWidht = UIScreen.main.bounds.width - 80
    
    var body: some View {
        
        Slider1()
    }
}

struct SliderComponent1_Previews: PreviewProvider {
    static var previews: some View {
            SliderComponent1()
    }
}

struct Slider1 : View {
    
    @State var width: CGFloat = 0
    @State var width1:  CGFloat = 30
    var totalWidth = UIScreen.main.bounds.width - 80
    
    var right1: String {
            
        let equal1 = self.width / self.totalWidth
        
        let km = Int(equal1 / 0.09)
        return "\(km) км"
    }
    
    var left1: String {
        
        let equal1 = self.width1 / self.totalWidth
        
        let km = Int(equal1 / 0.09)
        return "\(km) км"
    }
