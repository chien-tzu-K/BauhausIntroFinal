//
//  HistoryInfo.swift
//  Untitle Book
//
//  Created by 孜 on 2026/3/13.
//
import Foundation

struct HistoryEvent: Identifiable {
    let id = UUID()

    let year: String
    let image: String
    let location: String
    let introduction: String

}

let historyEvents: [HistoryEvent] = [

    HistoryEvent(
        year: "1919",
        image: "weimar",
        location: "Weimar, Germany",
        introduction:
        """
            The Bauhaus was founded in 1919 in the city of Weimar by architect Walter Gropius. Emerging in the aftermath of the First World War, the school proposed a radical new model of design education. Gropius believed that art, craft, and technology should no longer exist as separate disciplines but work together to shape the modern world.
                                
            Students at the Bauhaus began with an experimental preliminary course where they explored color theory, geometry, materials, and spatial composition. Only after this foundation would they enter specialized workshops such as metalworking, weaving, ceramics, and typography. Teachers including Paul Klee and Wassily Kandinsky encouraged abstract thinking and creative experimentation.

            Rather than training traditional artists, the Bauhaus aimed to cultivate designers capable of shaping everyday life. This early period established the philosophical foundation of modern design.
            """
    ),

    HistoryEvent(
        year: "1925",
        image: "dessau",
        location: "Dessau, Germany",
        introduction:
        """
            In 1925 the Bauhaus relocated to Dessau after political opposition forced the school to leave Weimar. The move marked the beginning of the Bauhaus’s most influential and productive era. A new campus designed by Walter Gropius became an icon of modern architecture, with glass curtain walls, modular spaces, and a strong emphasis on functional design.

            During this period the school strengthened its collaboration with industry. Workshops began designing objects intended for modern mass production, including furniture, lighting, textiles, and graphic systems. Designers such as Marcel Breuer developed innovative tubular steel furniture that embodied the Bauhaus belief in simplicity, efficiency, and structural clarity.

            The Dessau years transformed the Bauhaus from an experimental art school into a laboratory for modern industrial design.

            """
    ),

    HistoryEvent(
        year: "1933",
        image: "berlin",
        location: "Berlin, Germany",
        introduction:
        """
            By the early 1930s the political climate in Germany had become increasingly hostile to modernist cultural institutions. The Bauhaus relocated briefly to Berlin under the leadership of Ludwig Mies van der Rohe, attempting to continue as a private institution. However, pressure from the Nazi regime soon made it impossible for the school to operate. In 1933 the Bauhaus officially closed its doors.

            Although the institution itself ended, its influence spread across the world. Many Bauhaus teachers and students emigrated to Europe and the United States, where they continued teaching and practicing modern design. Figures such as Walter Gropius and Ludwig Mies van der Rohe helped establish the foundations of modern architecture and design education abroad.

            Through its ideas, methods, and alumni, the Bauhaus continued shaping the visual language of the modern world long after the school itself disappeared.
            
            """
    ),

]
