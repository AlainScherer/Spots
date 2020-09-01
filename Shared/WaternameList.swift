//
//  WaternameList.swift
//  AppLearning
//
//  Created by Alain Scherer on 30.08.20.
//

import SwiftUI

struct WaternameList: View {
    @State var posts: [Post] = [ ]

    
        var body: some View {
            Text("Aal")
                .onAppear {
//                    Api().getPosts()
            }
        }
    }

struct WaternameList_Previews: PreviewProvider {
    static var previews: some View {
        WaternameList()
    }
}
