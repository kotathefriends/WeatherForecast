//
//  ContentView.swift
//  WeatherForecast
//
//  Created by KOTA TAKAHASHI on 2023/12/02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ScrollView(.horizontal) {
            HStack {
                DayForecast(day: "Mon", isRainy: false, high: 90, low: 50)
                DayForecast(day: "Tue", isRainy: true, high: 60, low: 40)
                DayForecast(day: "Wed", isRainy: true, high: 60, low: 40)
                DayForecast(day: "Thu", isRainy: false, high: 60, low: 40)
                DayForecast(day: "Fri", isRainy: true, high: 60, low: 40)
                DayForecast(day: "Sat", isRainy: false, high: 60, low: 40)
                DayForecast(day: "Sun", isRainy: true, high: 60, low: 40)

                   
            }
        }
    }
}

#Preview {
    ContentView()
}

struct DayForecast: View {
    let day: String
    let isRainy: Bool
    let high: Int
    let low: Int
    
    var iconName: String {
        if isRainy {
            return "cloud.rain.fill"
        } else {
            return "sun.max.fill"
        }
    }
    
    var iconColor: Color {
        if isRainy {
            return Color.blue
        } else {
            return Color.yellow
        }
    }
    
    var textColor: Color {
        if high > 80 {
            return.red
        } else {
            return Color.primary
        }
    }
    
    var body: some View {
        VStack {
            Text(day)
                .font(Font.headline)
            Image(systemName: iconName)
                .foregroundStyle(iconColor)
                .font(Font.largeTitle)
                .padding(5)
            Text("High: \(high)º")
                .fontWeight(Font.Weight.semibold)
                .foregroundStyle(textColor)
            Text("Low: \(low)º")
                .fontWeight(Font.Weight.medium)
                .foregroundStyle(Color.secondary)
        }
        .padding()
    }
}
