//
//  SearchView.swift
//  Instagram
//
//  Created by Brett Moxey on 9/8/2023.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 12) {
                    ForEach(0 ... 15, id:\.self) { User in
                        HStack {
                            Image("blackpanther")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40, height:40)
                                .clipShape(Circle())
                            VStack(alignment: .leading) {
                                Text("Black Panther")
                                    .fontWeight(.semibold)
                                Text("Chadwick Boseman")
                            }
                            .font(.footnote)
                            Spacer()
                        }
                        .padding(.horizontal)
                    }
                }
                .padding(.top, 8)
                .searchable(text: $searchText, prompt: "Search ...")
                
            }
            .navigationTitle("Explorer")
            .navigationBarTitleDisplayMode(.inline)
        }
        
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
