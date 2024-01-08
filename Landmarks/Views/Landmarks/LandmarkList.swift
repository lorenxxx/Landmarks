//
//  LandmarkList.swift
//  Landmarks
//
//  Created by lorenliang on 2024/1/4.
//

import SwiftUI

struct LandmarkList: View {
    
    @Environment(ModelData.self) var modelData
    
    @State private var showFavoriteOnly = false
    
    var filterLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoriteOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationSplitView {
            List {
                Toggle(isOn: $showFavoriteOnly) {
                    Text("Favorites Only")
                }
                
                ForEach(filterLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
        
    }
}

#Preview {
    LandmarkList()
}
