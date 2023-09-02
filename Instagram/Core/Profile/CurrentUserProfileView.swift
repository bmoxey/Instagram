//
//  CurrentUserProfileView.swift
//  Instagram
//
//  Created by Brett Moxey on 2/9/2023.
//

import SwiftUI

struct CurrentUserProfileView: View {
    private let gridItems: [GridItem] = [
        .init(.flexible(),spacing:1),
        .init(.flexible(),spacing:1),
        .init(.flexible(),spacing:1)
    ]
    
    var body: some View {
        NavigationStack {
            
            ScrollView {
                // Header
                VStack {
                    // pic and stats
                    HStack {
                        Image("blackpanther")
                            .resizable()
                            .scaledToFit()
                            .frame(width:80, height: 80)
                            .clipShape(Circle())
                        UserStatView(value: 3, title: "Posts")
                        UserStatView(value: 1, title: "Followers")
                        UserStatView(value: 2, title: "Following")
                    }
                    .padding(.horizontal)
                    .padding(.bottom, 4)
                    // name and bio
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Chadwick Boseman")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        Text("Wakanda Forever")
                            .font(.footnote)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    // action button
                    Button {
                        
                    } label: {
                        Text("Edit Profile")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 360, height: 32)
                            .foregroundColor(.black)
                            .overlay(RoundedRectangle(cornerRadius: 6).stroke(Color.gray, lineWidth: 1))
                    }
                    
                    Divider()
                }
                // post grid view
                LazyVGrid(columns: gridItems, spacing: 1) {
                    ForEach(0 ... 20, id: \.self) { index in
                        Image("blackpanther")
                            .resizable()
                            .scaledToFill()
                    }
                }
                
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundColor(.black)
                    }
                }
            }
        }
    }
}

struct CurrentUserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentUserProfileView()
    }
}
