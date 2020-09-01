//
//  CoursesView.swift
//  AppLearning
//
//  Created by Alain Scherer on 17.08.20.
//

import SwiftUI

struct CoursesView: View {
    var body: some View {
        Rectangle()
            .background(Color .black)
        List(0 ..< 20) { item in
            CourseRow()
                .listRowBackground(Color .clear)
        }
        .listStyle(InsetGroupedListStyle())
    }
}

struct CoursesView_Previews: PreviewProvider {
    static var previews: some View {
        CoursesView()
    }
}
