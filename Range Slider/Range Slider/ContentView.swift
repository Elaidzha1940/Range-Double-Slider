//
//  ContentView.swift
//  Range Slider
//
//  Created by Elaidzha Shchukin on 20.03.2023.
//

import SwiftUI

struct SliderComponent: View {
    
    var totalWidht = UIScreen.main.bounds.width - 80
    
    var body: some View {
        
        Slider1()
    }
}

struct SliderComponent_Previews: PreviewProvider {
    static var previews: some View {
            SliderComponent()
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
    
    var body: some View {
        
        VStack {
            HStack {
                Text("Расстояние от меня")
                    .font(.headline)
                    .fontWeight(.bold)
                   
                Spacer()
                
                Text("\(right1) - \(left1)")
                    .fontWeight(.bold)
                    .foregroundColor(.red)
            }
            
            ZStack(alignment: .leading) {
                Rectangle()
                    .fill(Color.red)
                    .frame(height: 4)
                
                Rectangle()
                    .fill(Color.brown)
                    .frame(width: self.width1 - self.width, height: 6)
                    .offset(x: self.width + 28)
                
                
                HStack(spacing: 0) {
                    
                    Circle()
                        .fill(Color.brown)
                        .frame(width: 28, height: 28)
                        .offset(x: self.width)
                        .gesture(
                            
                            DragGesture()
                                .onChanged({ (value) in
                                    
                                    if value.location.x >= 0 && value.location.x <= self.width1 {
                                        
                                        self.width = value.location.x
                                    }
                                })
                        )
                    
                    Circle()
                        .fill(Color.blue)
                        .frame(width: 28, height: 28)
                        .offset(x: self.width1)
                        .gesture(
                            
                            DragGesture()
                                .onChanged({ (value) in
                                    
                                    if value.location.x <= self.totalWidth && value.location.x >= self.width {
                                        
                                        self.width1 = value.location.x
                                    }
                                    
                                })
                        )
                }
            }
        }
        .padding()
    }
}

