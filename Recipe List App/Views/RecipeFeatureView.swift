//
//  RecipeFeatureView.swift
//  Recipe List App
//
//  Created by Charles Low on 28/03/2023.
//

import SwiftUI

struct RecipeFeatureView: View {
    
    @EnvironmentObject var model:RecipeModel
    
    var body: some View {
        Text("Hi!")
    }
}

struct RecipeFeatureView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeFeatureView()
    }
}
