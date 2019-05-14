

class ChevroletCorsa {
	var property color
	method capacidad() { return 4 }
	method velocidadMaxima() { return 150 }
	method peso() { return 1300 }
}

class RenaultKwid {
	var property tanqueAdicional = true
	method capacidad() { if (tanqueAdicional) {return 3} else {return 4}}
	method velocidadMaxima() { if (tanqueAdicional) {return 120} else {return 110}}
	method color() { return "azul" }
	method peso() { return if (tanqueAdicional) {return 1350} else {return 1200}}
}

object trafic {
	var property interior
	var property motor
	
	method capacidad() { return interior.capacidad()}
	method velocidadMaxima() { return motor.velocidadMaxima()}
	method peso() { return 4000 + interior.peso() + motor.peso()}
	method color() { return "blanco"}
}

object interiorComodo {
	method capacidad() { return 5 }
	method peso() { return 700 }
}

object interiorPopular {
	method capacidad() { return 12 }
	method peso() { return 1000 }
}

object motorPulenta {
	method peso() { return 800 }
	method velocidadMaxima() { return 130 }	
}

object motorBataton {
	method peso() { return 500 }
	method velocidadMaxima() { return 80 }
}

class AutosEspeciales {
	var property capacidad = 0
	var property velocidadMaxima = 0
	var property peso = 0
	var property color 
}
