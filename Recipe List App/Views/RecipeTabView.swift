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
                        
                        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
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
                VStack{
                    RecipeListView()
                }
                .tabItem{
                    Image(systemName:"list.clipboard")
                    Text("Recipes")
                }
                .tag(1)
                
                
            }
        }
    }

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
