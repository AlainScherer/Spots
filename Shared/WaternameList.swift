//
//  WaternameList.swift
//  AppLearning
//
//  Created by Alain Scherer on 30.08.20.
//

import SwiftUI


struct WaternameList: View {
    @State var posts: [Place] = [ ]    
        var body: some View {
            List {
                ForEach(posts, id: \.id) { post in
                    Text(post.tags.name).foregroundColor(.white)
                   }.listRowBackground(Color.black)
               }
            .background(Color.black)
            .onAppear {
                    Api().getPosts { posts in
                        self.posts = posts
                        print("\(posts)")
                    }
                
      
            }
        }
    }

struct WaternameList_Previews: PreviewProvider {
    static var previews: some View {
        WaternameList()
    }
}
