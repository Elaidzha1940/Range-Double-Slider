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
