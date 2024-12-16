//
//  DetailView.swift
//  H4X0R News
//
//  Created by Wendy Hsiao on 2024/12/10.
//

import SwiftUI


struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

#Preview {
    DetailView(url: "https://www.google.com")
}


