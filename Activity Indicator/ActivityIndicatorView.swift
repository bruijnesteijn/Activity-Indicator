//
//  ActivityIndicatorView.swift
//  Activity Indicator
//
//  Created by Bart Bruijnesteijn on 04/07/2020.
//

import SwiftUI
import UIKit

struct ActivityIndicatorView: UIViewRepresentable {
    @Binding var isAnimating: Bool
    
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        return UIActivityIndicatorView()
    }
    
    func updateUIView(_ view: UIActivityIndicatorView, context: Context) {
        isAnimating == true ? view.startAnimating() : view.stopAnimating()
    }
}

struct ActivityIndicatorView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityIndicatorView(isAnimating: .constant(false))
    }
}
