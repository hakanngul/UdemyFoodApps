//
//  ContentView.swift
//  UdemyFoodApps
//
//  Created by Hakan Gül on 02/07/2023.
//

import SwiftUI

struct Anasayfa: View {
    @State private var foodsList = [Foods]()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(foodsList) {food in
                    NavigationLink(destination: FoodDetailView(food: food)) {
                        FoodsRow(food: food)
                    }
                }
            }
            //add navigationBarItem with Badge 5
            .navigationBarItems(trailing: Button(action: {
                print("Siparişlerim")
            }, label: {
                Image(systemName: "basket")
                    
                    .overlay(
                        Text("5")
                            .foregroundColor(.red)
                            .font(.system(size: 16))
                            .fontWeight(.bold)
                            .frame(width: 20, height: 20)
                            .border(.gray, width: 1)
                            .background(.clear)
                            .clipShape(Circle())
                            .offset(x: 15, y: -10)
                    )
            }))
            
                
        }.onAppear() {
            var list = [Foods]()
            list.append(Foods(id: 1, name: "ayran".capitalized, imagePath: "ayran", price: 8))
            list.append(Foods(id: 2, name: "baklava".capitalized, imagePath: "baklava", price: 70))
            list.append(Foods(id: 3, name: "fanta".capitalized, imagePath: "fanta", price: 10))
            list.append(Foods(id: 4, name: "kadayıf".capitalized, imagePath: "kadayif", price: 50))
            list.append(Foods(id: 5, name: "köfte".capitalized, imagePath: "kofte", price: 60))
            list.append(Foods(id: 6, name: "makarna".capitalized, imagePath: "makarna", price: 55))
            foodsList = list
        }
    }
}

struct FoodsRow: View {
    var food = Foods()
    var body: some View {
        HStack {
            Image(food.imagePath!).resizable()
                .frame(width: 100, height: 100)
            VStack(alignment: .leading, spacing: 30) {
                Text(food.name!)
                    .font(.headline)
                    .foregroundColor(.secondary)
                Text(food.price!.description + " TL")
                    .font(.headline)
                    .foregroundColor(.blue)
            
            }
        }
    }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Anasayfa()
    }
}
