import SwiftUI

struct ContentView: View {
    @State private var currentQuote = quotes.randomElement()!

    // Array de nombres para el botón
    let buttonTitles = [
        "Memento Mori", "Seek Wisdom", "Next Stoic Insight",
        "Embrace the Moment", "Pursue Virtue", "Unlock Insight",
        "Reflect Deeply", "Ponder This", "Discover More", "Find Serenity"
    ]
    
    @State private var currentButtonTitle = "Memento Mori" // Estado para el texto del botón

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                // Mostrar la imagen aleatoria del autor como fondo
                if let imageName = currentQuote.imageNames.randomElement() {
                    Image(imageName)
                        .resizable()
                        .scaledToFill() // Llenar toda la pantalla
                        .frame(width: geometry.size.width, height: geometry.size.height)
                        .clipped() // Recortar la imagen para que no se salga de los límites
                        .edgesIgnoringSafeArea(.all) // Ignorar los límites seguros para cubrir toda la pantalla
                        .overlay(Color.black.opacity(0.3)) // Añadir una capa negra semitransparente para mejorar el contraste
                }

                // Centrar la cita y el botón en la pantalla, pero un poco más abajo
                VStack {
                    Spacer()

                    // Mostrar el texto de la cita
                    Text(currentQuote.text)
                        .font(.custom("Georgia", size: 28)) // Usar Georgia para la cita
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 15)
                                .fill(Color(hex: "#f8f9fa").opacity(0.9)) // Fondo gris claro con opacidad
                                .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 5) // Sombra suave para darle profundidad
                        )
                        .foregroundColor(.black) // Texto en color negro

                    // Mostrar el autor con un fondo estilizado
                    Text("- \(currentQuote.author)")
                        .font(.custom("Merriweather", size: 22)) // Usar Merriweather para el autor
                        .foregroundColor(.white)
                        .padding(.horizontal, 20)
                        .padding(.vertical, 5)
                        .background(
                            Capsule()
                                .fill(Color(hex: "#007bff").opacity(0.9)) // Fondo azul suave
                                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 3) // Sombra para dar profundidad
                        )
                        .padding(.top, 10)

                    Spacer()

                    // Botón para mostrar otra cita
                    Button(action: {
                        currentQuote = quotes.randomElement()!
                        currentButtonTitle = buttonTitles.randomElement()! // Cambiar el texto del botón de forma aleatoria
                    }) {
                        Text(currentButtonTitle)
                            .font(.custom("SF Pro", size: 20)) // Usar SF Pro para el botón
                            .fontWeight(.semibold)
                            .padding()
                            .frame(maxWidth: .infinity) // Botón de ancho completo
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color(hex: "#28a745")) // Fondo verde para el botón
                                    .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5) // Sombra suave para el botón
                            )
                            .foregroundColor(.white) // Texto del botón en blanco
                    }
                    .padding(.horizontal, 40) // Espaciado horizontal
                    .padding(.bottom, 40) // Colocar el botón más abajo en la pantalla
                }
                .padding()
            }
            .frame(width: geometry.size.width, height: geometry.size.height) // Asegurar que la ZStack cubra toda la pantalla
        }
        .edgesIgnoringSafeArea(.all) // Ignorar los límites seguros para toda la pantalla
    }
}

// Extensión para convertir hexadecimal a Color
extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int = UInt64()
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8 * 17), (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }
        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue: Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

