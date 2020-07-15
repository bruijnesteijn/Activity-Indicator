//
//  ActivityView.swift
//  Shared
//
//  Created by Bart Bruijnesteijn on 04/07/2020.
//

import SwiftUI

struct ActivityView: View {
    @State private var isAnimating: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                ActivityIndicatorView(isAnimating: self.$isAnimating)
                
                Button(action: {
                    self.isAnimating = !self.isAnimating
                }, label: {
                    isAnimating == true ? Text("Stop Animating") : Text("Start Animating")
                })
            }
            
            .navigationBarTitle("Activity Indicator")
        }
    }
}

struct ActivityView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityView()
    }
}
