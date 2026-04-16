//
//  Untitled.swift
//  Untitle Book
//
//  Created by 孜 on 2026/3/16.
//

import Foundation

struct Master : Identifiable{
    let id = UUID()
    let name : String
    let avatar : String
    let introduction : String
    let works : [Work]
}


struct Work : Identifiable {
    let id = UUID()
    let name : String
    let image : String
    let introduction : String
    
}

let masters : [Master] = [
    
    Master(
        name: "Walter Gropius",
        avatar: "1humanimage",
        introduction: "Walter Gropius (1883–1969) was the founder of the Bauhaus School and a pioneer of modern architecture. He promoted the integration of art, craft, and industrial production, establishing a new model of design education that greatly influenced modern design and architecture.",
        works: [
            Work(
                name: "Bauhaus Dessau Building (1925–1926)",
                image: "1workImage1",
                introduction: "The Bauhaus school building in Dessau is a landmark of modernist architecture, known for its glass curtain wall and functional design."
            ),
            Work(
                name: "Fagus Factory (1911)",
                image: "1workImage2",
                introduction: "An early modernist industrial building featuring large glass façades and a revolutionary architectural style."
            )
        ]
    ),
    Master(
        name: "Paul Klee",
        avatar: "2humanimage",
        introduction: "Paul Klee (1879–1940) was a Swiss-German painter and an important teacher at the Bauhaus. His poetic and abstract style combined geometry, symbols, and color, influencing generations of modern artists and designers.",
        works: [
            Work(
                name: "Senecio (1922)",
                image: "2workImage1",
                introduction: "A famous painting composed of geometric shapes forming a human face."
            ),
            Work(
                name: "Twittering Machine (1922)",
                image: "2workImage2",
                introduction: "A whimsical work combining mechanical elements with imaginative forms."
            )
        ]
    ),
    Master(
        name: "Wassily Kandinsky",
        avatar: "3humanimage",
        introduction: "Wassily Kandinsky (1866–1944) was a pioneer of abstract art and a key teacher at the Bauhaus. He explored the relationship between color, form, and emotion, believing that art could express spiritual and inner experiences.",
        works: [
            Work(
                name: "Composition VIII (1923)",
                image: "3workImage1",
                introduction: "A geometric abstract composition of circles, lines, and shapes created during his Bauhaus period."
            ),
            Work(
                name: "Yellow-Red-Blue (1925)",
                image: "3workImage2",
                introduction: "A classic abstract painting demonstrating balance between color and geometric structure."
            )
        ]
    ),
    Master(
        name: "Ludwig Mies van der Rohe",
        avatar: "4humanimage",
        introduction: "Ludwig Mies van der Rohe (1886–1969) was a leading modernist architect and the last director of the Bauhaus. He is famous for the design philosophy “Less is more,” emphasizing simplicity, clarity, and structural beauty.",
        works: [
            Work(
                name: "Barcelona Pavilion (1929)",
                image: "4workImage1",
                introduction: "A masterpiece of modern architecture known for its minimal design and open spatial concept."
            ),
            Work(
                name: "Seagram Building (1958)",
                image: "4workImage2",
                introduction: "A landmark skyscraper that influenced modern high-rise architecture worldwide."
            )
        ]
    )
    
]
    
