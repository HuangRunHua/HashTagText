//
//  ContentView.swift
//  HashTagText
//
//  Created by Huang Runhua on 12/9/22.
//

import SwiftUI

struct ContentView: View {
    
    private let text: String = "#Meta’s oversight board recommended that the company review its procedures on handling content from celebrities and politicians, following revelations that harmful content that is posted by the rich and famous is often allowed to stay online, contravening the rules for other users. The board told Facebook’s owner that it “should prioritise expression that is important for #humanrights ”. Separately, #Facebook threatened to remove news content from its American site if legislation demands that it pay news organisations for the use of their material. Facebook prefers to make its own deals."
    
    var body: some View {
        HashtagText(text)
            .modifier(HashtagTextModifier())
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
