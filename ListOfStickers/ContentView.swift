//
//  ContentView.swift
//  ListOfStickers
//
//  Created by Sharafitdin on 02.06.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        StaffList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
    
struct Person: Identifiable {
     let id = UUID()
     var name: String
     var phoneNumber: String
 }

var staff = [
    Person(name: "Juan Chavez", phoneNumber: "(408) 555-4301"),
    Person(name: "Mei Chen", phoneNumber: "(919) 555-2481")
]

struct PersonRowView: View {
    var person: Person

    var body: some View {
        VStack(alignment: .leading, spacing: 3) {
            Text(person.name)
                .foregroundColor(.primary)
                .font(.headline)
            HStack(spacing: 3) {
                Label(person.phoneNumber, systemImage: "phone")
            }
            .foregroundColor(.secondary)
            .font(.subheadline)
        }
    }
}

struct Department: Identifiable {
    let id = UUID()
    var name: String
    var staff: [Person]
}

struct Company {
    var departments: [Department]
}

var company = Company(departments: [
    Department(name: "Boys", staff: [
        Person(name: "5:32", phoneNumber: "45 stickers"),
        Person(name: "Dope Tom&Jerry", phoneNumber: "120 stickers"),
        // ...
    ]),
    Department(name: "Girls", staff: [
        Person(name: "Jessica Rabbit", phoneNumber: "25 stickers"),
        Person(name: "Tom and Toodles", phoneNumber: "25 stickers"),
        // ...
    ]),
    // ...
])

struct PersonDetailView: View {
    var person: Person

    var body: some View {
        VStack {
            Text(person.name)
                .foregroundColor(.primary)
                .font(.title)
                .padding()
            HStack {
                Label(person.phoneNumber, systemImage: "phone")
            }
            .foregroundColor(.secondary)
        }
    }
}

struct StaffList: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(company.departments) { department in
                    Section(header: Text(department.name)) {
                        ForEach(department.staff) { person in
                            NavigationLink(destination: PersonDetailView(person: person)) {
                                PersonRowView(person: person)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Sticker packs")

            // Placeholder
            Text("No Selection")
                .font(.headline)
        }
    }
}
