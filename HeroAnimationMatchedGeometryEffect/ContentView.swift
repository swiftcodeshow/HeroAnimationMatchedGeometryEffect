//
//  ContentView.swift
//  HeroAnimationMatchedGeometryEffect
//
//  Created by 米国梁 on 2021/4/26.
//

import SwiftUI

struct ContentView: View {
    
    @Namespace var animation
    
    @State var toggle = false
    
    var body: some View {
        
        if toggle {
            Rectangle()
                .matchedGeometryEffect(id: "shape", in: animation)
                .foregroundColor(.green)
                .frame(width: 100, height: 100)
                .onTapGesture {
                    withAnimation {
                        toggle.toggle()
                    }
                }
        } else {
            Circle()
                .matchedGeometryEffect(id: "shape", in: animation)
                .foregroundColor(.red)
                .frame(width: 50, height: 50)
                .onTapGesture {
                    withAnimation {
                        toggle.toggle()
                    }
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
