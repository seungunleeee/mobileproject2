//
//  Button.swift
//  temproject
//
//  Created by seungunlee on 2023/05/23.
//

import SwiftUI




struct ContentViewb: View {
    @State private var isNavigationLinkActive = false
    var body: some View {
          NavigationView {
              VStack {
                  Button(action: {
                      print("Button tapped!")
                      self.isNavigationLinkActive = true
                  }) {
                      Text("Go")
                          .foregroundColor(.white)
                          .frame(width: 66.41, height: 30.28)
                  }
                  .background(Color.black)
                  .cornerRadius(11)
                  
                  NavigationLink("", destination: DestinationView(), isActive: $isNavigationLinkActive)
                      .hidden()
              }
          }
      }
    
    
}





struct DestinationView: View {
    var body: some View {
        Text("Destination View")
    }
}

struct ContentViewb_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewb()
    }
}
