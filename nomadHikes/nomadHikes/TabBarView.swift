//
//  TabBarView.swift
//  nomadHikes
//
//  Created by Eddie Ruiz on 10/1/20.
//

import Foundation
import SwiftUI

struct TabbarView: View {
    var body: some View {
        TabView {
            NavigationView {
                ActivitiesContentView(activtiesData: Activities(data: ActivitiesStore.activityData, items: ActivitiesStore.activities))
            }
            .tag(0)
            .tabItem {
                Image("activity-1")
                    .resizable()
                Text("Activities")
            }
            
//            NavigationView {
//                ActivitiesCartView(ShoppingCartItemsData: ActivitiesCart(data: ActivitiesMockStore.shoppingCartData))
//            }
//            .tag(1)
//            .tabItem {
//                Image("shopping-cart-icon")
//                Text("Cart")
//            }
            
            NavigationView {
                     AccountView()
                  }
                   .tag(2)
                    .tabItem {
                    Image("profile-glyph-icon")
                    Text("Account")
                }
        }
    }
}



