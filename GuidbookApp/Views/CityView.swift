//
//  ContentView.swift
//  GuidbookApp
//
//  Created by Leone on 5/28/23.
//

import SwiftUI

struct CityView: View {
    
    @State var cities = [City]()
    var dataService = DataService()
    
    var body: some View {
        NavigationStack {
            // Place the scroll on the bottom/ root of the navstack
            ScrollView(showsIndicators: false) {
                
                VStack {
                    
                    ForEach(cities) { city in
                        NavigationLink {
                            AttractionView(city: city)
                        } label: {
                            CityCard(city: city)
                                .padding(.bottom, 20)
                        }
                        
                    }
                }
            }
            .padding(.horizontal)
        }
        .ignoresSafeArea()
        .onAppear { // As soon as the View loads, grab the cities
            cities = dataService.getData()
        }
    }
}

struct CityView_Previews: PreviewProvider {
    static var previews: some View {
        CityView()
    }
}
