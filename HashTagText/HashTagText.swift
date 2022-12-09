//
//  HashTagText.swift
//  HashTagText
//
//  Created by Huang Runhua on 12/9/22.
//

import SwiftUI

struct HashtagText: View {
    
    var text: String
    
    init(_ text: String) {
        self.text = text
    }
    
    var body: some View {
        Text(text)
    }
    
}
