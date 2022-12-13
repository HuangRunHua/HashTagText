//
//  ContentView.swift
//  HashTagText
//
//  Created by Huang Runhua on 12/9/22.
//

import SwiftUI

struct ContentView: View {
    
    private let text: String = "The largest #strikes in #Britain for a decade caused the loss of 417,000 working hours during October, according to the Office for National Statistics. A further 1m hours are expected to be lost in December as rail workers, postal workers, nurses and teachers demand better pay and conditions. Inflation and soaring energy costs have created a #cost-of-living crisis in the country."
    
    @State private var showAlert: Bool = false
    @State private var selectedKeyword: String = ""
    
    var body: some View {
        HashtagText(text)
            .modifier(HashtagTextModifier())
            .padding()
            .onOpenURL { url in
                let string = url.absoluteString
                if let keyword = string.split(separator: "//").last {
                    self.selectedKeyword = String(keyword)
                    self.showAlert.toggle()
                }
            }
            .sheet(isPresented: $showAlert) {
                HashtagDetailView(hashtag: $selectedKeyword)
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
