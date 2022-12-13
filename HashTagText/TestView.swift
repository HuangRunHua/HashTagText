//
//  TestView.swift
//  HashTagText
//
//  Created by Huang Runhua on 12/9/22.
//

import SwiftUI

struct TestView: View {
    
//    private var string: String = "#Meta’s oversight board recommended that the company review its procedures on handling content from celebrities and politicians, following revelations that harmful content that is posted by the rich and famous is often allowed to stay online #fuck"
//
//    private var tweet: AttributedString {
//        var tweet = AttributedString(self.string, attributes: .)
//    }
    
    var body: some View {
        Group {
            Text("#Meta’s oversight board recommended that the company review its procedures on handling content from celebrities and politicians, following revelations that harmful content that is posted by the rich and famous is often allowed to stay online ") +
            Text("#fuck") {
                $0.link = URL(string: "www.apple.com")
                $0.foregroundColor = .accentColor
            }
        }
        .padding()
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
