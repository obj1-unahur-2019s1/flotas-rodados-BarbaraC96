import rodados.*
import dependencia.* 

class Viaje {
	
	var property distancia
	var property tiempoMaximo
	var property cantPasajeros
	var property colorIncompatible = #{}
	
	method velocidadRequerida() { return distancia / tiempoMaximo }
	method satisfacerUnPedido(auto) { return  auto.velocidadMaxima() >= 
		self.velocidadRequerida() + 10
		and auto.capacidad() >= cantPasajeros
		and not colorIncompatible.contains(auto.color())
	}
	
	method acelerar() { tiempoMaximo -= 1 }
	method relajar() { tiempoMaximo += 1 }
} 
