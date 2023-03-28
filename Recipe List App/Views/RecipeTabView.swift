//
//  RecipeTabView.swift
//  Recipe List App
//
//  Created by Charles Low on 24/03/2023.
//

import SwiftUI

struct RecipeTabView: View {
    
    @State var tabIndex = 0
    
    var body: some View {
        TabView (selection:$tabIndex){
                VStack{
                    NavigationView{
                        
                        RecipeFeatureView()
                            .navigationTitle("Features")
                    }
                }
                .tabItem{
                    VStack{
                        Image(systemName: "star")
                        Text("Features")
                    }
                }
                .tag(0)
                
                //Recipe Page
                    RecipeListView()
                .tabItem{
                    VStack{
                        Image(systemName:"list.clipboard")
                        Text("Recipes")
                    }
                }
                .tag(1)
                
                
            }
        .environmentObject(RecipeModel())
        }
    }

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
